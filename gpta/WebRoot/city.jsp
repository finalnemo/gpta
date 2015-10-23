<%@ page language="java" import="java.util.*,com.zhu.entity.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>111</title>
</head>
<body>
<!-- <div class="control-group"> -->
  <label class="control-label" for="location_p">所在地区</label>
    <select name="location_p" id="location_p">
    </select>
    <select name="location_c" id="location_c">
    </select>
    <select name="location_a" id="location_a">
    </select>
   
    
<!-- </div> -->
<script src="js/region_select.js"></script>
<script type="text/javascript">

		new PCAS('location_p', 'location_c', 'location_a', '上海市', '', '');
</script>
</body>
</html>
