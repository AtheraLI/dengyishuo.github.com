####��Ҫ����XML��
####id:��Ʊ����
####year:���

get.finance=function(id,year){
web=paste("http://money.finance.sina.com.cn/corp/go.php/vFD_FinancialGuideLine/stockid/",id,"/ctrl/",year,"/displaytype/4.phtml",sep="")
tables <- readHTMLTable(web)[[20]]
rownames(tables)<-iconv(tables[,1],"UTF-8","gbk")
return(tables[,-1])
}
