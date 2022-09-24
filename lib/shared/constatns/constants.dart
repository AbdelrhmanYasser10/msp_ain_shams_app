/*Constant social apps images*/
const List<String> socialNetworkImages =[
  "https://m1.pagewizcdn.com/Media/2019-06-01-09-53-22-704lcmliulzbeezmzkqjpaqbtqgo_UserMedia.png",
  "https://www.looplink.me/public/uploads/social_icons/icon7.png",
  "https://drive.uqu.edu.sa/_/smqarni/images/youtube.png",
];

const List<String> socialMediaLinks = [
  "https://www.facebook.com/ASUTC",
  "https://www.linkedin.com/company/msp-tech-club-asu/",
  "https://www.youtube.com/channel/UCx4RR5PPCwfU_Om_9pAwaCA/featured",
];


/*constant functions*/
String getMonthName({required int month}){
  switch(month){
    case 1:
      return "Jan";
    case 2:
      return "Feb";
    case 3:
      return "Mar";
    case 4:
      return "Apr";
    case 5:
      return "May";
    case 6:
      return "Jun";
    case 7:
      return "Jul";
    case 8:
      return "Aug";
    case 9:
      return "Sep";
    case 10:
      return "Oct";
    case 11:
      return "Nov";
    case 12:
      return "Dec";
    default:
      return "00";
  }
}