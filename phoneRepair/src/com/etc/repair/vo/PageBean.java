package com.etc.repair.vo;

import java.util.List;
/**
 * 一页:数据
 * @author Limin
 *	定义pageBean为泛型，这样就可以查询不同的数据内容
 *pageBean<Product>   查询商品
 *pageBean<User>    查询用户
 */
public class PageBean<T> {
		/**
		 *  1.总页数
			2.每一页条数
			3.当前页
			4.总条数
			5.每一页的内容
		 */
		private  int totalPage;    //总页数
		private int pageSize;     //每一页的条数
		private  int currPage;    //当前页数
		private int totalCount;   //总条数
		private  List<T> list;  //每一页的内容
		
		public int getTotalPage() {
			if(totalCount%pageSize==0){
				return totalCount/pageSize; 
			}else{
				return totalCount/pageSize+1;
			}
		}
		public void setTotalPage(int totalPage) {
			this.totalPage = totalPage;
		}
		public int getPageSize() {
			return pageSize;
		}
		public void setPageSize(int pageSize) {
			this.pageSize = pageSize;
		}
		public int getCurrPage() {
			return currPage;
		}
		public void setCurrPage(int currPage) {
			this.currPage = currPage;
		}
		public int getTotalCount() {
			return totalCount;
		}
		public void setTotalCount(int totalCount) {
			this.totalCount = totalCount;
		}
		public List<T> getList() {
			return list;
		}
		public void setList(List<T> list) {
			this.list = list;
		}
		@Override
		public String toString() {
			return "PageBean [totalPage=" + totalPage + ", pageSize="
					+ pageSize + ", currPage=" + currPage + ", totalCount="
					+ totalCount + ", list=" + list + "]";
		}
		
}
