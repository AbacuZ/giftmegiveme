<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<html>
<head>
<meta http-equiv="content-Type" content="text/html; charset=UTF-8">
<script language="javascript">
function checkID(id) {
    if(id.length != 13) return false;
    for(i=0, sum=0; i < 12; i++)

        sum += parseFloat(id.charAt(i))*(13-i);
    if((11-sum%11)%10!=parseFloat(id.charAt(12))) return false;
    return true;
}
function checkForm() {
    if(!checkID(document.form1.txtID.value))
        alert('รหัสบัตรประชาชนไม่ถูกต้อง โปรดกลับไปกรอกอีกครั้ง !!');
    else
        alert('รหัสบัตรประชาชนถูกต้อง !!');

}
</script>
</head>
<body>
<form name="form1" onsubmit="checkForm(); return false;">
โปรดกรอกเลขที่บัตรประชาชน : <input name="txtID" type="text" size="20">
<input value="ตรวจสอบ" type="submit">
</form>
</body>
</html>