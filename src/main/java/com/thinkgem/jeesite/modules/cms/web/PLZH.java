package com.thinkgem.jeesite.modules.cms.web;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.imageio.ImageIO;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.LuminanceSource;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.Result;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.common.HybridBinarizer;
import com.thinkgem.jeesite.common.utils.StringUtils;

public class PLZH {
	
	
	public static void main(String[] args) {
		try {
			String info = readInfoFromPdf417Image("e:\\kl122.jpg", "UTF-8");
			System.out.println(info);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 功能：从图片的byte数组中读取内容
	 * @param imgBuff			二维码图片流的byte[]
	 * @param encode			编码格式，比如：GBK，UTF-8
	 * @return
	 * @throws Exception
	 */
	public static String readInfoFromPdf417Image(String imageFilePath, String encode)
			throws Exception {
//		if (imgBuff == null || imgBuff.length < 1) {
//			throw new Exception("二维条码的图片内容不能为空！");
//		}

//		InputStream is = new ByteArrayInputStream(imgBuff);

		BufferedImage image = ImageIO.read(new File(imageFilePath));

		LuminanceSource source = new BufferedImageLuminanceSource(image);

		BinaryBitmap bitmap = new BinaryBitmap(new HybridBinarizer(source));

		Result decodedValue = new MultiFormatReader().decode(bitmap);

		if (decodedValue == null) {
			return "";
		}

		String resultText = decodedValue.getText();
		resultText = StringUtils.trimToEmpty(resultText);
		byte[] b = resultText.getBytes("ISO-8859-1");
		return new String(b, encode);
	}

	private static long factorial(int n) {
		return (n > 1) ? n * factorial(n - 1) : 1;
	}
    
    public static long arrangement(int n, int m) {
		return (n >= m) ? factorial(n) / factorial(n - m) : 0;
	}
    
    /**
	 * 计算组合数，即C(n, m) = n!/((n-m)! * m!)
	 * @param n
	 * @param m
	 * @return
	 */
	public static long combination(int n, int m) {
		return (n >= m) ? factorial(n) / factorial(n - m) / factorial(m) : 0;
	}
	
	public static List<String> combinationSelect(String data, int n,List<DateSplit> splitList) {
		
		String[] dataList = data.split(",");
		String[] aa=new String[n];
		List<String> result = combinationSelect(dataList, 0, aa, 0,splitList);
		return result;
	}

	/**
	 * 组合选择
	 * @param dataList 待选列表
	 * @param dataIndex 待选开始索引
	 * @param resultList 前面（resultIndex-1）个的组合结果
	 * @param resultIndex 选择索引，从0开始
	 */
	private static List<String> combinationSelect(String[] dataList, int dataIndex, String[] resultList, int resultIndex,List<DateSplit> splitList) {
		
		List<String> result= new ArrayList<String>();
		
		int resultLen = resultList.length;
		int resultCount = resultIndex + 1;
		if (resultCount > resultLen) { // 全部选择完时，输出组合结果

			for(DateSplit dataSplit:splitList) {
				if(StringUtils.isBlank(dataSplit.getNumStr())||StringUtils.isBlank(dataSplit.getDataStr())) {
					continue;
				}
				String[]numArray=dataSplit.getNumStr().split(",");
				if("13".equals(dataSplit.getDataStr())) {
					//数据和
					Integer sum=0;
					for(int kk=0;kk<resultList.length;kk++) {
						sum= sum+Integer.valueOf(resultList[kk]);
					}
					boolean isInSum=false;
					for(String num:numArray) {
						if(num.equals(sum+"")) {
							isInSum = true;
							break;
						}
					}
					if(!isInSum) {
						return result;
					}
					
				}else if("14".equals(dataSplit.getDataStr())) {
					//跨度
					int min =0;
					int max = 0;
					for(int kk=0;kk<resultList.length;kk++) {
						if(min == 0	) {
							min = Integer.valueOf(resultList[kk]);
						}else if(Integer.valueOf(min).compareTo(Integer.valueOf(resultList[kk]))>0) {
							min = Integer.valueOf(resultList[kk]);
						}
						if(max == 0) {
							max= Integer.valueOf(resultList[kk]);
						}else if(Integer.valueOf(max).compareTo(Integer.valueOf(resultList[kk]))<0) {
							max = Integer.valueOf(resultList[kk]);
						}
					}
					boolean isInSpan=false;
					String spanNum=String.valueOf(max-min);
					for(String num:numArray) {
						if(num.equals(spanNum)) {
							isInSpan = true;
							break;
						}
					}
					if(!isInSpan) {
						return result;
					}
				}else {
					String[] sList = dataSplit.getDataStr().split(",");
					int sNum =0;
					for(int kk=0;kk<resultList.length;kk++) {
						for(int i=0;i<sList.length;i++) {
							if(sList[i].equals(resultList[kk])) {
								sNum++;
								break;
							}
						}
					}
					boolean isIn = false;//是否在给定的数据范围内
					for(String num:numArray) {
						if(num.equals(sNum+"")) {
							isIn = true;
							break;
						}
					}
					if(!isIn) {
						return result;
					}
				}
			}
			
			StringBuffer strBuffer = new StringBuffer();
			for(int kk=0;kk<resultList.length;kk++) {
				if(resultList[kk].length()==1) {
					strBuffer.append("0");
				}
				strBuffer.append(resultList[kk]);
				if(kk+1<resultList.length) {
					strBuffer.append("-");
				}
			}
			result.add(strBuffer.toString());
			return result;
		}

		// 递归选择下一个
		for (int i = dataIndex; i < dataList.length + resultCount - resultLen; i++) {
			resultList[resultIndex] = dataList[i];
			result.addAll(combinationSelect(dataList, i + 1, resultList, resultIndex + 1,splitList));
		}
		
		return result;
	}
    
    public static void arrangementSelect(String[] dataList, int n) {
		System.out.println(String.format("A(%d, %d) = %d", dataList.length, n, arrangement(dataList.length, n)));
		arrangementSelect(dataList, new String[n], 0);
	}
    
    private static void arrangementSelect(String[] dataList, String[] resultList, int resultIndex) {
		int resultLen = resultList.length;
		if (resultIndex >= resultLen) { // 全部选择完时，输出排列结果
			System.out.println(Arrays.asList(resultList));
			return;
		}

		// 递归选择下一个
		for (int i = 0; i < dataList.length; i++) {
			// 判断待选项是否存在于排列结果中
			boolean exists = false;
			for (int j = 0; j < resultIndex; j++) {
				if (dataList[i].equals(resultList[j])) {
					exists = true;
					break;
				}
			}
			if (!exists) { // 排列结果不存在该项，才可选择
				resultList[resultIndex] = dataList[i];
				arrangementSelect(dataList, resultList, resultIndex + 1);
			}
		}
	}
}
