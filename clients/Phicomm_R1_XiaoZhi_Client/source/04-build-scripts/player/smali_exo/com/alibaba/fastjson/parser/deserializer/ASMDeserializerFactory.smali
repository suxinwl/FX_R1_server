.class public Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/asm/Opcodes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;
    }
.end annotation


# static fields
.field static final DefaultJSONParser:Ljava/lang/String;

.field static final JSONLexerBase:Ljava/lang/String;


# instance fields
.field public final classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

.field protected final seed:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const-class v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    .line 51
    const-class v0, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    .line 54
    instance-of v0, p1, Lcom/alibaba/fastjson/util/ASMClassLoader;

    if-eqz v0, :cond_11

    check-cast p1, Lcom/alibaba/fastjson/util/ASMClassLoader;

    goto :goto_17

    :cond_11
    new-instance v0, Lcom/alibaba/fastjson/util/ASMClassLoader;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/util/ASMClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    move-object p1, v0

    :goto_17
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    return-void
.end method

.method private _batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
    .registers 4

    const/4 v0, 0x1

    .line 1190
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Z)V

    return-void
.end method

.method private _batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Z)V
    .registers 8

    .line 1194
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldInfoList:[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_23

    .line 1195
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    if-eqz p3, :cond_12

    .line 1198
    invoke-direct {p0, p2, p1, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_isFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;ILcom/alibaba/fastjson/asm/Label;)V

    .line 1201
    :cond_12
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldInfoList:[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v3

    aget-object v3, v3, v1

    .line 1202
    invoke-direct {p0, p1, p2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_loadAndSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    if-eqz p3, :cond_20

    .line 1205
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_23
    return-void
.end method

.method private _createInstance(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
    .registers 11

    .line 1887
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;
    invoke-static {p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$000(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 1888
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 1892
    :cond_11
    new-instance v0, Lcom/alibaba/fastjson/asm/MethodWriter;

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";Ljava/lang/reflect/Type;)Ljava/lang/Object;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "createInstance"

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson/asm/MethodWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 p1, 0xbb

    .line 1896
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getInstClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 p1, 0x59

    .line 1897
    invoke-interface {v0, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 p1, 0xb7

    .line 1898
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getInstClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "<init>"

    const-string v2, "()V"

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xb0

    .line 1900
    invoke-interface {v0, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/4 p1, 0x3

    .line 1901
    invoke-interface {v0, p1, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 1902
    invoke-interface {v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    return-void
.end method

.method private _createInstance(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
    .registers 10

    .line 1168
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$000(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v0

    .line 1169
    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 1170
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    const-string v2, "instance"

    const/16 v3, 0x3a

    const/16 v4, 0xb7

    if-eqz v1, :cond_3f

    const/16 v1, 0xbb

    .line 1171
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getInstClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v1, 0x59

    .line 1172
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1174
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    const-string v5, "()V"

    invoke-interface {p2, v4, v0, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, v3, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_92

    :cond_3f
    const/16 v0, 0x19

    const/4 v1, 0x0

    .line 1178
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v5, 0x1

    .line 1179
    invoke-interface {p2, v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1180
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb4

    .line 1181
    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "clazz"

    const-string v6, "Ljava/lang/Class;"

    invoke-interface {p2, v0, v1, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    const-class v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(L"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";Ljava/lang/reflect/Type;)Ljava/lang/Object;"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "createInstance"

    invoke-interface {p2, v4, v0, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc0

    .line 1184
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getInstClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1185
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, v3, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    :goto_92
    return-void
.end method

.method private _deserObject(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;I)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1714
    invoke-direct/range {p0 .. p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_getFieldDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 1716
    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v4, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1717
    iget v5, v2, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v6, v6, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v5, v6

    const-string v6, "_asm"

    const-string v8, "(L"

    const-string v9, "deserialze"

    const-string v10, "(I)Ljava/lang/reflect/Type;"

    const-string v11, "getFieldType"

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v15, 0xc0

    const/16 v7, 0x19

    if-eqz v5, :cond_ce

    const/16 v5, 0x59

    .line 1718
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v5, 0xc1

    .line 1719
    const-class v16, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static/range {v16 .. v16}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v5, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v5, 0x99

    .line 1720
    invoke-interface {v1, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1722
    const-class v5, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v15, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1723
    invoke-interface {v1, v7, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1724
    iget-object v5, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    instance-of v5, v5, Ljava/lang/Class;

    if-eqz v5, :cond_61

    .line 1725
    iget-object v5, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_76

    .line 1727
    :cond_61
    invoke-interface {v1, v7, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1728
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1729
    const-class v5, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const/16 v14, 0xb6

    invoke-interface {v1, v14, v5, v11, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    :goto_76
    iget-object v5, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1733
    iget v5, v2, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1734
    const-class v5, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0xb6

    invoke-interface {v1, v14, v5, v9, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v15, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1737
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    const/16 v12, 0x3a

    invoke-interface {v1, v12, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xa7

    .line 1739
    invoke-interface {v1, v5, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1741
    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1744
    :cond_ce
    invoke-interface {v1, v7, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1745
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    instance-of v3, v3, Ljava/lang/Class;

    if-eqz v3, :cond_e5

    .line 1746
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_fb

    :cond_e5
    const/4 v3, 0x0

    .line 1748
    invoke-interface {v1, v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1749
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1750
    const-class v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xb6

    invoke-interface {v1, v5, v3, v11, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    :goto_fb
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v3, 0xb9

    .line 1754
    const-class v5, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v3, v5, v9, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v15, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1757
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x3a

    invoke-interface {v1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1759
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    return-void
.end method

.method private _deserialize_endCheck(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;)V
    .registers 8

    const-string v0, "matchedCount"

    .line 1304
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x15

    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIntInsn(II)V

    const/16 v0, 0x9e

    .line 1305
    invoke-interface {p2, v0, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const-string v0, "lexer"

    .line 1307
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1308
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v1, 0xb6

    const-string v2, "token"

    const-string v3, "()I"

    invoke-interface {p2, v1, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xd

    .line 1309
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    .line 1310
    invoke-interface {p2, v0, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1313
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_quickNextTokenComma(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    return-void
.end method

.method private _deserialze(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
    .registers 34

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 584
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldInfoList:[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_c

    return-void

    .line 588
    :cond_c
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldInfoList:[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v10, 0x0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_3d

    aget-object v3, v0, v2

    .line 589
    iget-object v4, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 590
    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 592
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_20

    return-void

    .line 596
    :cond_20
    const-class v5, Ljava/util/Collection;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 597
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_39

    .line 598
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v10

    .line 599
    instance-of v3, v3, Ljava/lang/Class;

    if-eqz v3, :cond_39

    goto :goto_3a

    :cond_39
    return-void

    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 610
    :cond_3d
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$000(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v0

    .line 611
    iget-object v1, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    # setter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldInfoList:[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$202(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;[Lcom/alibaba/fastjson/util/FieldInfo;)[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 613
    new-instance v7, Lcom/alibaba/fastjson/asm/MethodWriter;

    const/4 v13, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v14, "deserialze"

    move-object v11, v7

    move-object/from16 v12, p1

    invoke-direct/range {v11 .. v17}, Lcom/alibaba/fastjson/asm/MethodWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 617
    new-instance v11, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v11}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 618
    new-instance v12, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 619
    new-instance v13, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v13}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 620
    new-instance v14, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v14}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 622
    invoke-direct {v8, v9, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->defineVarLexer(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    .line 625
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string v15, "lexer"

    .line 629
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v6, 0x19

    invoke-interface {v7, v6, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 630
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v5, 0xb6

    const-string v3, "token"

    const-string v4, "()I"

    invoke-interface {v7, v5, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe

    .line 631
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v4, 0xa0

    .line 632
    invoke-interface {v7, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 634
    iget v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v2

    const/16 v3, 0x15

    const/4 v2, 0x4

    if-nez v0, :cond_dc

    .line 635
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 636
    invoke-interface {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 637
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 638
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v3, "isEnabled"

    const-string v2, "(II)Z"

    invoke-interface {v7, v5, v0, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x99

    .line 639
    invoke-interface {v7, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 642
    :cond_dc
    invoke-interface {v7, v6, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v3, 0x1

    .line 643
    invoke-interface {v7, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v2, 0x2

    .line 644
    invoke-interface {v7, v6, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x3

    .line 645
    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 646
    invoke-interface {v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v10, 0xb7

    .line 648
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(L"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "deserialzeArrayMapping"

    .line 647
    invoke-interface {v7, v10, v2, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb0

    .line 651
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 653
    invoke-interface {v7, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 657
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 658
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->SortFeidFastMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 659
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "isEnabled"

    const-string v2, "(I)Z"

    invoke-interface {v7, v5, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v1, 0x9a

    .line 662
    invoke-interface {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v1, 0xc8

    .line 663
    invoke-interface {v7, v1, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 664
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 666
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 667
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->clazz:Ljava/lang/Class;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$400(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 668
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanType"

    const-string v2, "(Ljava/lang/String;)I"

    invoke-interface {v7, v5, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 670
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 672
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 673
    invoke-interface {v7, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v1, 0xc8

    .line 674
    invoke-interface {v7, v1, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 675
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/4 v0, 0x1

    .line 677
    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 678
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getContext"

    invoke-interface {v7, v5, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mark_context"

    .line 679
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v10, 0x3a

    invoke-interface {v7, v10, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x3

    .line 682
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const-string v0, "matchedCount"

    .line 683
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x36

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 685
    invoke-direct {v8, v9, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_createInstance(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    const/4 v0, 0x1

    .line 688
    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 689
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getContext"

    invoke-interface {v7, v5, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "context"

    .line 690
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v10, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x1

    .line 692
    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v0, "context"

    .line 693
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v0, "instance"

    .line 694
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x3

    .line 695
    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 696
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/alibaba/fastjson/parser/ParseContext;

    .line 697
    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Ljava/lang/Object;Ljava/lang/Object;)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/alibaba/fastjson/parser/ParseContext;

    .line 698
    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setContext"

    .line 696
    invoke-interface {v7, v5, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "childContext"

    .line 699
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v10, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 702
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 703
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb4

    const-string v1, "matchStat"

    const-string v4, "I"

    invoke-interface {v7, v2, v0, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 704
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0x9f

    .line 705
    invoke-interface {v7, v0, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v0, 0x3

    .line 707
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 708
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIntInsn(II)V

    .line 710
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldInfoList:[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v2

    array-length v2, v2

    const/4 v10, 0x0

    :goto_262
    if-ge v10, v2, :cond_287

    .line 712
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_asm_flag_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v5, v10, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    add-int/lit8 v10, v10, 0x20

    const/4 v0, 0x3

    const/16 v5, 0xb6

    goto :goto_262

    .line 716
    :cond_287
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 717
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 718
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v5, "isEnabled"

    const-string v10, "(I)Z"

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v0, v5, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "initStringFieldAsEmpty"

    .line 719
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIntInsn(II)V

    const/4 v0, 0x0

    :goto_2ae
    const-string v10, "_asm"

    if-ge v0, v2, :cond_3f8

    .line 723
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldInfoList:[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v5

    aget-object v5, v5, v0

    .line 724
    iget-object v6, v5, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 726
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v6, v3, :cond_3c2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v6, v3, :cond_3c2

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v6, v3, :cond_3c2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v3, :cond_2cc

    goto/16 :goto_3c2

    .line 732
    :cond_2cc
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v3, :cond_2fb

    const/16 v3, 0x9

    .line 733
    invoke-interface {v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v3, 0x37

    .line 734
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v9, v5, v6}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v7, v3, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    :goto_2f0
    move-object/from16 v27, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v26, v14

    :goto_2f8
    const/4 v3, 0x3

    goto/16 :goto_3e8

    .line 735
    :cond_2fb
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v6, v3, :cond_31f

    const/16 v3, 0xb

    .line 736
    invoke-interface {v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v3, 0x38

    .line 737
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v7, v3, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_2f0

    .line 738
    :cond_31f
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v6, v3, :cond_344

    const/16 v3, 0xe

    .line 739
    invoke-interface {v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v3, 0x39

    .line 740
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v9, v5, v6}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v7, v3, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_2f0

    .line 742
    :cond_344
    const-class v3, Ljava/lang/String;

    if-ne v6, v3, :cond_391

    .line 743
    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    move-object/from16 v24, v12

    .line 744
    new-instance v12, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    move-object/from16 v25, v13

    const-string v13, "initStringFieldAsEmpty"

    .line 745
    invoke-virtual {v9, v13}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v26, v14

    const/16 v14, 0x15

    invoke-interface {v7, v14, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0x99

    .line 746
    invoke-interface {v7, v13, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 747
    invoke-direct {v8, v7, v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V

    .line 748
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0x19

    invoke-interface {v7, v14, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 749
    sget-object v13, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v14, "stringDefaultValue"

    move-object/from16 v27, v11

    const-string v11, "()Ljava/lang/String;"

    const/16 v8, 0xb6

    invoke-interface {v7, v8, v13, v14, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0xa7

    .line 750
    invoke-interface {v7, v8, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 752
    invoke-interface {v7, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/4 v8, 0x1

    .line 753
    invoke-interface {v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 755
    invoke-interface {v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto :goto_39d

    :cond_391
    move-object/from16 v27, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v26, v14

    const/4 v8, 0x1

    .line 757
    invoke-interface {v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    :goto_39d
    const/16 v3, 0xc0

    .line 760
    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v3, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 761
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0x3a

    invoke-interface {v7, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_2f8

    :cond_3c2
    :goto_3c2
    move-object/from16 v27, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v26, v14

    const/4 v3, 0x3

    .line 730
    invoke-interface {v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 731
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x36

    invoke-interface {v7, v6, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    :goto_3e8
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, p0

    move-object/from16 v12, v24

    move-object/from16 v13, v25

    move-object/from16 v14, v26

    move-object/from16 v11, v27

    const/16 v3, 0x36

    goto/16 :goto_2ae

    :cond_3f8
    move-object/from16 v27, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v26, v14

    const/4 v3, 0x3

    const/4 v8, 0x0

    :goto_402
    if-ge v8, v2, :cond_ef9

    .line 766
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldInfoList:[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v0

    aget-object v5, v0, v8

    .line 767
    iget-object v6, v5, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 768
    iget-object v0, v5, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 770
    new-instance v11, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v11}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 772
    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v13, "[C"

    const-string v14, "_asm_prefix__"

    if-ne v6, v12, :cond_476

    .line 773
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v6, 0x19

    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 774
    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 775
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v12, 0xb4

    invoke-interface {v7, v12, v0, v6, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v6, "scanFieldBoolean"

    const-string v12, "([C)Z"

    const/16 v13, 0xb6

    invoke-interface {v7, v13, v0, v6, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x36

    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    move/from16 v28, v2

    :goto_469
    move/from16 v30, v8

    move-object/from16 v29, v11

    const/4 v8, 0x1

    const/16 v13, 0xb6

    const/16 v14, 0x3a

    move-object/from16 v11, p0

    goto/16 :goto_da5

    .line 778
    :cond_476
    sget-object v12, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v3, "([C)I"

    move/from16 v28, v2

    const-string v2, "scanFieldInt"

    if-ne v6, v12, :cond_4c9

    .line 779
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v6, 0x19

    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 780
    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 781
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v12, 0xb4

    invoke-interface {v7, v12, v0, v6, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x36

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_469

    .line 785
    :cond_4c9
    const-class v12, Ljava/lang/Byte;

    move-object/from16 v29, v11

    const-string v11, "valueOf"

    move/from16 v30, v8

    const/16 v8, 0xb8

    if-ne v6, v12, :cond_570

    .line 786
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v6, 0x19

    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 787
    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 788
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v12, 0xb4

    invoke-interface {v7, v12, v0, v6, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Byte"

    const-string v2, "(B)Ljava/lang/Byte;"

    .line 790
    invoke-interface {v7, v8, v0, v11, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x3a

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 793
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 794
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x19

    invoke-interface {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 795
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v3, 0xb4

    invoke-interface {v7, v3, v2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    .line 796
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v2, 0xa0

    .line 797
    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v2, 0x1

    .line 798
    invoke-interface {v7, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 799
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x3a

    invoke-interface {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 800
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    :goto_567
    move-object/from16 v11, p0

    const/4 v8, 0x1

    :goto_56a
    const/16 v13, 0xb6

    const/16 v14, 0x3a

    goto/16 :goto_da5

    .line 802
    :cond_570
    sget-object v12, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v6, v12, :cond_5bd

    .line 803
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v6, 0x19

    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 804
    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 805
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0xb4

    invoke-interface {v7, v8, v0, v6, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x36

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_567

    .line 809
    :cond_5bd
    const-class v12, Ljava/lang/Short;

    if-ne v6, v12, :cond_655

    .line 810
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v6, 0x19

    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 811
    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 812
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v12, 0xb4

    invoke-interface {v7, v12, v0, v6, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Short"

    const-string v2, "(S)Ljava/lang/Short;"

    .line 814
    invoke-interface {v7, v8, v0, v11, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x3a

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 817
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 818
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x19

    invoke-interface {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 819
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v3, 0xb4

    invoke-interface {v7, v3, v2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    .line 820
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v2, 0xa0

    .line 821
    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v2, 0x1

    .line 822
    invoke-interface {v7, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x3a

    invoke-interface {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 824
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_567

    .line 826
    :cond_655
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v12, :cond_6a3

    .line 827
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v6, 0x19

    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 828
    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 829
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0xb4

    invoke-interface {v7, v8, v0, v6, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x36

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_567

    .line 833
    :cond_6a3
    const-class v12, Ljava/lang/Integer;

    if-ne v6, v12, :cond_73b

    .line 834
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v6, 0x19

    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 835
    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 836
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v12, 0xb4

    invoke-interface {v7, v12, v0, v6, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Integer"

    const-string v2, "(I)Ljava/lang/Integer;"

    .line 838
    invoke-interface {v7, v8, v0, v11, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x3a

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 841
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 842
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x19

    invoke-interface {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 843
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v3, 0xb4

    invoke-interface {v7, v3, v2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    .line 844
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v2, 0xa0

    .line 845
    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v2, 0x1

    .line 846
    invoke-interface {v7, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 847
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x3a

    invoke-interface {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 848
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_567

    .line 850
    :cond_73b
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v2, :cond_78e

    .line 851
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 852
    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 853
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb4

    invoke-interface {v7, v3, v0, v2, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFieldLong"

    const-string v3, "([C)J"

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x37

    .line 855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v9, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v7, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_567

    .line 857
    :cond_78e
    const-class v2, Ljava/lang/Long;

    if-ne v6, v2, :cond_82a

    .line 858
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 859
    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 860
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb4

    invoke-interface {v7, v3, v0, v2, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFieldLong"

    const-string v3, "([C)J"

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Long"

    const-string v2, "(J)Ljava/lang/Long;"

    .line 862
    invoke-interface {v7, v8, v0, v11, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x3a

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 865
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 866
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x19

    invoke-interface {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 867
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v3, 0xb4

    invoke-interface {v7, v3, v2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    .line 868
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v2, 0xa0

    .line 869
    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v2, 0x1

    .line 870
    invoke-interface {v7, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x3a

    invoke-interface {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 872
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_567

    .line 874
    :cond_82a
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v6, v2, :cond_87c

    .line 875
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 876
    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 877
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb4

    invoke-interface {v7, v3, v0, v2, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFieldFloat"

    const-string v3, "([C)F"

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x38

    .line 879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_567

    .line 881
    :cond_87c
    const-class v2, Ljava/lang/Float;

    if-ne v6, v2, :cond_918

    .line 882
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 883
    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 884
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb4

    invoke-interface {v7, v3, v0, v2, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFieldFloat"

    const-string v3, "([C)F"

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Float"

    const-string v2, "(F)Ljava/lang/Float;"

    .line 886
    invoke-interface {v7, v8, v0, v11, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x3a

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 889
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 890
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x19

    invoke-interface {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 891
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v3, 0xb4

    invoke-interface {v7, v3, v2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    .line 892
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v2, 0xa0

    .line 893
    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v2, 0x1

    .line 894
    invoke-interface {v7, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x3a

    invoke-interface {v7, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 896
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_567

    .line 897
    :cond_918
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v6, v2, :cond_96b

    .line 898
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 899
    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 900
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb4

    invoke-interface {v7, v3, v0, v2, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFieldDouble"

    const-string v3, "([C)D"

    const/16 v6, 0xb6

    invoke-interface {v7, v6, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x39

    .line 902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v9, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v7, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_567

    :cond_96b
    const/4 v3, 0x2

    .line 904
    const-class v2, Ljava/lang/Double;

    if-ne v6, v2, :cond_a0a

    .line 905
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 906
    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 907
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xb4

    invoke-interface {v7, v6, v0, v2, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFieldDouble"

    const-string v6, "([C)D"

    const/16 v12, 0xb6

    invoke-interface {v7, v12, v0, v2, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Double"

    const-string v2, "(D)Ljava/lang/Double;"

    .line 909
    invoke-interface {v7, v8, v0, v11, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x3a

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 912
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 913
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v6, 0x19

    invoke-interface {v7, v6, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 914
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v6, 0xb4

    invoke-interface {v7, v6, v2, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    .line 915
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v2, 0xa0

    .line 916
    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v8, 0x1

    .line 917
    invoke-interface {v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 918
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0x3a

    invoke-interface {v7, v5, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 920
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    :goto_a06
    move-object/from16 v11, p0

    goto/16 :goto_56a

    :cond_a0a
    const/4 v8, 0x1

    .line 921
    const-class v2, Ljava/lang/String;

    if-ne v6, v2, :cond_a5c

    .line 922
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 923
    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 924
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xb4

    invoke-interface {v7, v6, v0, v2, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFieldString"

    const-string v6, "([C)Ljava/lang/String;"

    const/16 v11, 0xb6

    invoke-interface {v7, v11, v0, v2, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x3a

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_a06

    .line 928
    :cond_a5c
    const-class v2, Ljava/util/Date;

    if-ne v6, v2, :cond_aae

    .line 929
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 930
    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 931
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xb4

    invoke-interface {v7, v6, v0, v2, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFieldDate"

    const-string v6, "([C)Ljava/util/Date;"

    const/16 v11, 0xb6

    invoke-interface {v7, v11, v0, v2, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x3a

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_a06

    .line 935
    :cond_aae
    const-class v2, Ljava/util/UUID;

    if-ne v6, v2, :cond_b00

    .line 936
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 937
    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 938
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xb4

    invoke-interface {v7, v6, v0, v2, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFieldUUID"

    const-string v6, "([C)Ljava/util/UUID;"

    const/16 v11, 0xb6

    invoke-interface {v7, v11, v0, v2, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x3a

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_a06

    .line 942
    :cond_b00
    const-class v2, Ljava/math/BigDecimal;

    if-ne v6, v2, :cond_b52

    .line 943
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 944
    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 945
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xb4

    invoke-interface {v7, v6, v0, v2, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFieldDecimal"

    const-string v6, "([C)Ljava/math/BigDecimal;"

    const/16 v11, 0xb6

    invoke-interface {v7, v11, v0, v2, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x3a

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_a06

    .line 948
    :cond_b52
    const-class v2, Ljava/math/BigInteger;

    if-ne v6, v2, :cond_ba4

    .line 949
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 950
    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 951
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xb4

    invoke-interface {v7, v6, v0, v2, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFieldBigInteger"

    const-string v6, "([C)Ljava/math/BigInteger;"

    const/16 v11, 0xb6

    invoke-interface {v7, v11, v0, v2, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x3a

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_a06

    .line 954
    :cond_ba4
    const-class v2, [I

    if-ne v6, v2, :cond_bf6

    .line 955
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 956
    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 957
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xb4

    invoke-interface {v7, v6, v0, v2, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFieldIntArray"

    const-string v6, "([C)[I"

    const/16 v11, 0xb6

    invoke-interface {v7, v11, v0, v2, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x3a

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_a06

    .line 960
    :cond_bf6
    const-class v2, [F

    if-ne v6, v2, :cond_c48

    .line 961
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 962
    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 963
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xb4

    invoke-interface {v7, v6, v0, v2, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFieldFloatArray"

    const-string v6, "([C)[F"

    const/16 v11, 0xb6

    invoke-interface {v7, v11, v0, v2, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x3a

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_a06

    .line 966
    :cond_c48
    const-class v2, [[F

    if-ne v6, v2, :cond_c9a

    .line 967
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 968
    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 969
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xb4

    invoke-interface {v7, v6, v0, v2, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanFieldFloatArray2"

    const-string v6, "([C)[[F"

    const/16 v11, 0xb6

    invoke-interface {v7, v11, v0, v2, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x3a

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_a06

    .line 972
    :cond_c9a
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_d27

    const/4 v2, 0x0

    const/16 v11, 0x19

    .line 973
    invoke-interface {v7, v11, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 974
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v11, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 975
    invoke-interface {v7, v11, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 976
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0xb4

    invoke-interface {v7, v11, v0, v2, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v11, p0

    .line 977
    invoke-direct {v11, v9, v7, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_getFieldDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 978
    const-class v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "(L"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ";[C"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v12, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 979
    invoke-static {v12}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ")Ljava/lang/Enum;"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v12, "scanEnum"

    const/16 v13, 0xb6

    .line 978
    invoke-interface {v7, v13, v0, v12, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc0

    .line 980
    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x3a

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_56a

    :cond_d27
    move-object/from16 v11, p0

    .line 1012
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_ebd

    .line 1013
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v12, 0x19

    invoke-interface {v7, v12, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v2, 0x0

    .line 1014
    invoke-interface {v7, v12, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1015
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v12, 0xb4

    invoke-interface {v7, v12, v2, v3, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v12

    .line 1019
    const-class v0, Ljava/lang/String;

    if-ne v12, v0, :cond_e80

    .line 1020
    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1021
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "([CLjava/lang/Class;)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Ljava/util/Collection;

    .line 1022
    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "scanFieldStringArray"

    const/16 v13, 0xb6

    .line 1021
    invoke-interface {v7, v13, v0, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v14, 0x3a

    invoke-interface {v7, v14, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1042
    :goto_da5
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1043
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v3, 0xb4

    invoke-interface {v7, v3, v0, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v5, 0x9e

    .line 1046
    invoke-interface {v7, v5, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    move/from16 v5, v30

    .line 1047
    invoke-direct {v11, v7, v9, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V

    .line 1048
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1050
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1051
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v7, v3, v0, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x59

    .line 1052
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1053
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x36

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, -0x1

    .line 1055
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0x9f

    move-object/from16 v3, v27

    .line 1056
    invoke-interface {v7, v0, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1058
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1059
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v2, 0xb4

    invoke-interface {v7, v2, v0, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9e

    move-object/from16 v2, v29

    .line 1060
    invoke-interface {v7, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const-string v0, "matchedCount"

    .line 1063
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v6, 0x15

    invoke-interface {v7, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x4

    .line 1064
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v12, 0x60

    .line 1065
    invoke-interface {v7, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const-string v12, "matchedCount"

    .line 1066
    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v12

    const/16 v8, 0x36

    invoke-interface {v7, v8, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1068
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v12

    const/16 v6, 0x19

    invoke-interface {v7, v6, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1069
    sget-object v6, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v12, 0xb4

    invoke-interface {v7, v12, v6, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0x9f

    move-object/from16 v6, v26

    .line 1071
    invoke-interface {v7, v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1073
    invoke-interface {v7, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    add-int/lit8 v2, v28, -0x1

    if-ne v5, v2, :cond_e6a

    .line 1076
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-interface {v7, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1077
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v12, 0xb4

    invoke-interface {v7, v12, v0, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x4

    .line 1078
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    .line 1079
    invoke-interface {v7, v0, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto :goto_e6c

    :cond_e6a
    const/16 v16, 0x4

    :goto_e6c
    move-object/from16 v21, v1

    move-object v14, v3

    move-object/from16 v23, v4

    move-object v8, v6

    move-object v12, v7

    move/from16 v16, v28

    const/16 v13, 0x19

    const/16 v18, 0x36

    const/16 v19, 0xa0

    const/16 v20, 0xb4

    move v7, v5

    goto/16 :goto_ee8

    :cond_e80
    move-object/from16 v8, v26

    move-object/from16 v3, v27

    const/16 v2, 0x19

    const/4 v13, 0x3

    const/16 v14, 0x3a

    const/16 v16, 0x4

    const/16 v18, 0x15

    const/16 v19, 0xa0

    const/16 v20, 0xb4

    move-object/from16 v0, p0

    move-object/from16 v21, v1

    move-object/from16 v1, p2

    move/from16 v16, v28

    const/4 v14, 0x2

    const/16 v22, 0x19

    move-object v2, v7

    const/4 v13, 0x1

    const/16 v18, 0x36

    move-object/from16 v23, v4

    move-object v4, v5

    const/16 v14, 0xb6

    move-object v5, v6

    const/16 v13, 0x19

    move-object v6, v12

    move-object v12, v7

    move/from16 v7, v30

    .line 1025
    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserialze_list_obj(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;Ljava/lang/Class;I)V

    add-int/lit8 v2, v16, -0x1

    if-ne v7, v2, :cond_eba

    move-object/from16 v4, v27

    .line 1028
    invoke-direct {v11, v9, v12, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserialize_endCheck(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;)V

    move-object v14, v4

    goto :goto_ee8

    :cond_eba
    move-object/from16 v14, v27

    goto :goto_ee8

    :cond_ebd
    move-object/from16 v21, v1

    move-object/from16 v23, v4

    move-object v12, v7

    move-object/from16 v8, v26

    move-object/from16 v4, v27

    move/from16 v16, v28

    move/from16 v7, v30

    const/16 v13, 0x19

    const/16 v14, 0xb6

    const/16 v18, 0x36

    const/16 v19, 0xa0

    const/16 v20, 0xb4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move-object v3, v4

    move-object v14, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    .line 1033
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserialze_obj(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;I)V

    add-int/lit8 v2, v16, -0x1

    if-ne v7, v2, :cond_ee8

    .line 1036
    invoke-direct {v11, v9, v12, v14}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserialize_endCheck(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;)V

    :cond_ee8
    :goto_ee8
    add-int/lit8 v0, v7, 0x1

    move-object/from16 v26, v8

    move-object v7, v12

    move-object/from16 v27, v14

    move/from16 v2, v16

    move-object/from16 v1, v21

    move-object/from16 v4, v23

    const/4 v3, 0x3

    move v8, v0

    goto/16 :goto_402

    :cond_ef9
    move-object/from16 v11, p0

    move/from16 v16, v2

    move-object v12, v7

    move-object/from16 v8, v26

    move-object/from16 v14, v27

    const/16 v13, 0x19

    .line 1083
    invoke-interface {v12, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1085
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->clazz:Ljava/lang/Class;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$400(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_f22

    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->clazz:Ljava/lang/Class;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$400(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-nez v0, :cond_f22

    .line 1086
    invoke-direct {v11, v9, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    :cond_f22
    move-object/from16 v0, v25

    .line 1089
    invoke-interface {v12, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1091
    invoke-direct {v11, v9, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_setContext(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    const-string v0, "instance"

    .line 1092
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v13, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1094
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$000(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_f65

    .line 1096
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getInstClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xb6

    .line 1096
    invoke-interface {v12, v3, v1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f65
    const/16 v0, 0xb0

    .line 1100
    invoke-interface {v12, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1102
    invoke-interface {v12, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1104
    invoke-direct {v11, v9, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    const/4 v0, 0x0

    .line 1105
    invoke-interface {v12, v13, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x1

    .line 1106
    invoke-interface {v12, v13, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x2

    .line 1107
    invoke-interface {v12, v13, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x3

    .line 1108
    invoke-interface {v12, v13, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v0, "instance"

    .line 1109
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v13, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x15

    const/4 v1, 0x4

    .line 1110
    invoke-interface {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1113
    div-int/lit8 v2, v16, 0x20

    if-eqz v16, :cond_f99

    .line 1115
    rem-int/lit8 v3, v16, 0x20

    if-eqz v3, :cond_f99

    add-int/lit8 v2, v2, 0x1

    :cond_f99
    const/4 v3, 0x1

    if-ne v2, v3, :cond_fa0

    .line 1120
    invoke-interface {v12, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_fa5

    :cond_fa0
    const/16 v3, 0x10

    .line 1122
    invoke-interface {v12, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIntInsn(II)V

    :goto_fa5
    const/16 v3, 0xbc

    const/16 v4, 0xa

    .line 1124
    invoke-interface {v12, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIntInsn(II)V

    const/4 v3, 0x0

    :goto_fad
    if-ge v3, v2, :cond_fe7

    const/16 v4, 0x59

    .line 1126
    invoke-interface {v12, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    if-nez v3, :cond_fbb

    const/4 v4, 0x3

    .line 1128
    invoke-interface {v12, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_fc7

    :cond_fbb
    const/4 v4, 0x1

    if-ne v3, v4, :cond_fc2

    .line 1130
    invoke-interface {v12, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_fc7

    :cond_fc2
    const/16 v4, 0x10

    .line 1132
    invoke-interface {v12, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIntInsn(II)V

    .line 1134
    :goto_fc7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_asm_flag_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0x4f

    .line 1135
    invoke-interface {v12, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_fad

    .line 1138
    :cond_fe7
    const-class v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I[I)Ljava/lang/Object;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "parseRest"

    const/16 v5, 0xb6

    invoke-interface {v12, v5, v2, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc0

    .line 1141
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->clazz:Ljava/lang/Class;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$400(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v2, 0xb0

    .line 1142
    invoke-interface {v12, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    move-object/from16 v2, v24

    .line 1144
    invoke-interface {v12, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/4 v2, 0x0

    .line 1145
    invoke-interface {v12, v13, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v2, 0x1

    .line 1146
    invoke-interface {v12, v13, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v2, 0x2

    .line 1147
    invoke-interface {v12, v13, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v2, 0x3

    .line 1148
    invoke-interface {v12, v13, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1149
    invoke-interface {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb7

    .line 1150
    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deserialze"

    invoke-interface {v12, v0, v1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb0

    .line 1153
    invoke-interface {v12, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0xa

    .line 1155
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variantIndex:I
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$100(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)I

    move-result v1

    invoke-interface {v12, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 1156
    invoke-interface {v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    return-void
.end method

.method private _deserialzeArrayMapping(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
    .registers 30

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 114
    new-instance v15, Lcom/alibaba/fastjson/asm/MethodWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v10, 0x1

    const-string v11, "deserialzeArrayMapping"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v15

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v14}, Lcom/alibaba/fastjson/asm/MethodWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 118
    invoke-direct {v6, v7, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->defineVarLexer(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    const-string v8, "lexer"

    .line 120
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v9, 0x19

    invoke-interface {v15, v9, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 121
    invoke-interface {v15, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 122
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v11, 0xb6

    const-string v2, "getSymbolTable"

    invoke-interface {v15, v11, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")Ljava/lang/String;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scanTypeName"

    invoke-interface {v15, v11, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "typeName"

    .line 124
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v12, 0x3a

    invoke-interface {v15, v12, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 126
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string v1, "typeName"

    .line 127
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v9, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xc6

    .line 128
    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 130
    invoke-interface {v15, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 131
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getConfig"

    invoke-interface {v15, v11, v1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    .line 132
    invoke-interface {v15, v9, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 133
    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const/16 v14, 0xb4

    const-string v3, "beanInfo"

    invoke-interface {v15, v14, v1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "typeName"

    .line 134
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v9, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 135
    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 136
    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Ljava/lang/String;)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xb8

    const-string v3, "getSeeAlso"

    .line 135
    invoke-interface {v15, v5, v1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "userTypeDeser"

    .line 137
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v12, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v1, "userTypeDeser"

    .line 138
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v9, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 139
    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc1

    invoke-interface {v15, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v1, 0x99

    .line 140
    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const-string v1, "userTypeDeser"

    .line 142
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v9, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 143
    invoke-interface {v15, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v1, 0x2

    .line 144
    invoke-interface {v15, v9, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v1, 0x3

    .line 145
    invoke-interface {v15, v9, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v1, 0x4

    .line 146
    invoke-interface {v15, v9, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 147
    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 148
    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deserialzeArrayMapping"

    .line 147
    invoke-interface {v15, v11, v1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb0

    .line 151
    invoke-interface {v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 153
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 155
    invoke-direct {v6, v7, v15}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_createInstance(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    .line 157
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$000(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v0

    iget-object v4, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 158
    array-length v3, v4

    const/4 v2, 0x0

    :goto_187
    const-string v1, "ch"

    const-string v13, "(I)V"

    const-string v10, "()C"

    if-ge v2, v3, :cond_cb2

    add-int/lit8 v14, v3, -0x1

    if-ne v2, v14, :cond_195

    const/4 v14, 0x1

    goto :goto_196

    :cond_195
    const/4 v14, 0x0

    :goto_196
    if-eqz v14, :cond_19d

    const/16 v18, 0x5d

    const/16 v12, 0x5d

    goto :goto_1a1

    :cond_19d
    const/16 v18, 0x2c

    const/16 v12, 0x2c

    .line 163
    :goto_1a1
    aget-object v5, v4, v2

    .line 164
    iget-object v11, v5, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 165
    iget-object v0, v5, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 166
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move/from16 v20, v3

    const-string v3, "_asm"

    if-eq v11, v9, :cond_c5f

    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v11, v9, :cond_c5f

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v11, v9, :cond_1b9

    goto/16 :goto_c5f

    .line 173
    :cond_1b9
    const-class v9, Ljava/lang/Byte;

    move-object/from16 v21, v4

    const-string v4, "I"

    move/from16 v22, v14

    const-string v14, "matchStat"

    move-object/from16 v23, v13

    const-string v13, "valueOf"

    if-ne v11, v9, :cond_255

    .line 174
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 175
    invoke-interface {v15, v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 176
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanInt"

    const-string v9, "(C)I"

    const/16 v10, 0xb6

    invoke-interface {v15, v10, v0, v1, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Byte"

    const-string v1, "(B)Ljava/lang/Byte;"

    const/16 v9, 0xb8

    .line 177
    invoke-interface {v15, v9, v0, v13, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 180
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 181
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v9, 0x19

    invoke-interface {v15, v9, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 182
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v9, 0xb4

    invoke-interface {v15, v9, v1, v14, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    .line 184
    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x1

    .line 185
    invoke-interface {v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x3a

    invoke-interface {v15, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 187
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    :goto_248
    move/from16 v16, v2

    move/from16 v17, v20

    move-object/from16 v19, v21

    :goto_24e
    const/16 v9, 0x3a

    const/16 v11, 0xb8

    const/4 v14, 0x1

    goto/16 :goto_c9e

    .line 188
    :cond_255
    const-class v9, Ljava/lang/Short;

    if-ne v11, v9, :cond_2da

    .line 189
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 190
    invoke-interface {v15, v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 191
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanInt"

    const-string v9, "(C)I"

    const/16 v10, 0xb6

    invoke-interface {v15, v10, v0, v1, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Short"

    const-string v1, "(S)Ljava/lang/Short;"

    const/16 v9, 0xb8

    .line 192
    invoke-interface {v15, v9, v0, v13, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 195
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 196
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v9, 0x19

    invoke-interface {v15, v9, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 197
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v9, 0xb4

    invoke-interface {v15, v9, v1, v14, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    .line 199
    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x1

    .line 200
    invoke-interface {v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x3a

    invoke-interface {v15, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 202
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_248

    .line 203
    :cond_2da
    const-class v9, Ljava/lang/Integer;

    if-ne v11, v9, :cond_35f

    .line 204
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 205
    invoke-interface {v15, v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 206
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanInt"

    const-string v9, "(C)I"

    const/16 v10, 0xb6

    invoke-interface {v15, v10, v0, v1, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Integer"

    const-string v1, "(I)Ljava/lang/Integer;"

    const/16 v9, 0xb8

    .line 207
    invoke-interface {v15, v9, v0, v13, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 210
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 211
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v9, 0x19

    invoke-interface {v15, v9, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 212
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v9, 0xb4

    invoke-interface {v15, v9, v1, v14, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 213
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    .line 214
    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x1

    .line 215
    invoke-interface {v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x3a

    invoke-interface {v15, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 217
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_248

    .line 218
    :cond_35f
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v11, v9, :cond_399

    .line 219
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 220
    invoke-interface {v15, v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 221
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanLong"

    const-string v4, "(C)J"

    const/16 v9, 0xb6

    invoke-interface {v15, v9, v0, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x37

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v7, v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v15, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_248

    .line 224
    :cond_399
    const-class v9, Ljava/lang/Long;

    if-ne v11, v9, :cond_41e

    .line 225
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 226
    invoke-interface {v15, v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 227
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanLong"

    const-string v9, "(C)J"

    const/16 v10, 0xb6

    invoke-interface {v15, v10, v0, v1, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Long"

    const-string v1, "(J)Ljava/lang/Long;"

    const/16 v9, 0xb8

    .line 228
    invoke-interface {v15, v9, v0, v13, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 231
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 232
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v9, 0x19

    invoke-interface {v15, v9, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 233
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v9, 0xb4

    invoke-interface {v15, v9, v1, v14, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 234
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    .line 235
    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x1

    .line 236
    invoke-interface {v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x3a

    invoke-interface {v15, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 238
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_248

    .line 239
    :cond_41e
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v11, v9, :cond_457

    .line 240
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 241
    invoke-interface {v15, v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 242
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanBoolean"

    const-string v4, "(C)Z"

    const/16 v9, 0xb6

    invoke-interface {v15, v9, v0, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x36

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_248

    .line 244
    :cond_457
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v11, v9, :cond_490

    .line 245
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 246
    invoke-interface {v15, v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 247
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFloat"

    const-string v4, "(C)F"

    const/16 v9, 0xb6

    invoke-interface {v15, v9, v0, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x38

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_248

    .line 250
    :cond_490
    const-class v9, Ljava/lang/Float;

    if-ne v11, v9, :cond_515

    .line 251
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 252
    invoke-interface {v15, v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 253
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanFloat"

    const-string v9, "(C)F"

    const/16 v10, 0xb6

    invoke-interface {v15, v10, v0, v1, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Float"

    const-string v1, "(F)Ljava/lang/Float;"

    const/16 v9, 0xb8

    .line 254
    invoke-interface {v15, v9, v0, v13, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 257
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 258
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v9, 0x19

    invoke-interface {v15, v9, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 259
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v9, 0xb4

    invoke-interface {v15, v9, v1, v14, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 260
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    .line 261
    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x1

    .line 262
    invoke-interface {v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x3a

    invoke-interface {v15, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 264
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_248

    .line 266
    :cond_515
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v11, v9, :cond_54f

    .line 267
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 268
    invoke-interface {v15, v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 269
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanDouble"

    const-string v4, "(C)D"

    const/16 v9, 0xb6

    invoke-interface {v15, v9, v0, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x39

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v7, v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v15, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_248

    .line 272
    :cond_54f
    const-class v9, Ljava/lang/Double;

    if-ne v11, v9, :cond_5d4

    .line 273
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 274
    invoke-interface {v15, v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 275
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanDouble"

    const-string v9, "(C)D"

    const/16 v10, 0xb6

    invoke-interface {v15, v10, v0, v1, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java/lang/Double"

    const-string v1, "(D)Ljava/lang/Double;"

    const/16 v9, 0xb8

    .line 276
    invoke-interface {v15, v9, v0, v13, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 279
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 280
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v9, 0x19

    invoke-interface {v15, v9, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 281
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v9, 0xb4

    invoke-interface {v15, v9, v1, v14, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 282
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xa0

    .line 283
    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v1, 0x1

    .line 284
    invoke-interface {v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x3a

    invoke-interface {v15, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 286
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_248

    .line 288
    :cond_5d4
    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v11, v9, :cond_61a

    .line 289
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 290
    invoke-interface {v15, v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 291
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanString"

    const-string v4, "(C)Ljava/lang/String;"

    const/16 v9, 0xb6

    invoke-interface {v15, v9, v0, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 292
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const-string v0, "java/lang/String"

    const-string v1, "charAt"

    const-string v4, "(I)C"

    .line 293
    invoke-interface {v15, v9, v0, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x36

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_248

    .line 295
    :cond_61a
    const-class v9, Ljava/lang/String;

    if-ne v11, v9, :cond_653

    .line 296
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 297
    invoke-interface {v15, v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 298
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanString"

    const-string v4, "(C)Ljava/lang/String;"

    const/16 v9, 0xb6

    invoke-interface {v15, v9, v0, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_248

    .line 301
    :cond_653
    const-class v9, Ljava/math/BigDecimal;

    if-ne v11, v9, :cond_68c

    .line 302
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 303
    invoke-interface {v15, v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 304
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanDecimal"

    const-string v4, "(C)Ljava/math/BigDecimal;"

    const/16 v9, 0xb6

    invoke-interface {v15, v9, v0, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_248

    .line 307
    :cond_68c
    const-class v9, Ljava/util/Date;

    if-ne v11, v9, :cond_6c5

    .line 308
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 309
    invoke-interface {v15, v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 310
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanDate"

    const-string v4, "(C)Ljava/util/Date;"

    const/16 v9, 0xb6

    invoke-interface {v15, v9, v0, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_248

    .line 313
    :cond_6c5
    const-class v9, Ljava/util/UUID;

    if-ne v11, v9, :cond_6fe

    .line 314
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 315
    invoke-interface {v15, v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 316
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanUUID"

    const-string v4, "(C)Ljava/util/UUID;"

    const/16 v9, 0xb6

    invoke-interface {v15, v9, v0, v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_248

    .line 319
    :cond_6fe
    invoke-virtual {v11}, Ljava/lang/Class;->isEnum()Z

    move-result v9

    if-eqz v9, :cond_89f

    .line 320
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 321
    new-instance v4, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 322
    new-instance v9, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v9}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 323
    new-instance v14, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v14}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    move/from16 v24, v2

    .line 325
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v25, v3

    const/16 v3, 0x19

    invoke-interface {v15, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 326
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v3, "getCurrent"

    move-object/from16 v26, v13

    const/16 v13, 0xb6

    invoke-interface {v15, v13, v2, v3, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x59

    .line 327
    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 328
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x36

    invoke-interface {v15, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v2, 0x6e

    .line 329
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v2, 0x9f

    .line 330
    invoke-interface {v15, v2, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 332
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x15

    invoke-interface {v15, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v2, 0x22

    .line 333
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v2, 0xa0

    .line 334
    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 336
    invoke-interface {v15, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 337
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x19

    invoke-interface {v15, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 338
    invoke-static {v11}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v2

    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 339
    invoke-interface {v15, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 340
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "()"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v10, Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-static {v10}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v10, "getSymbolTable"

    const/16 v13, 0xb6

    invoke-interface {v15, v13, v2, v10, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x10

    .line 341
    invoke-interface {v15, v2, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 342
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(Ljava/lang/Class;"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v10, Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 343
    invoke-static {v10}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "C)Ljava/lang/Enum;"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v10, "scanEnum"

    const/16 v13, 0xb6

    .line 342
    invoke-interface {v15, v13, v2, v10, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa7

    .line 344
    invoke-interface {v15, v2, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 347
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 348
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x15

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x30

    .line 349
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xa1

    .line 350
    invoke-interface {v15, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 352
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x39

    .line 353
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xa3

    .line 354
    invoke-interface {v15, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 356
    invoke-direct {v6, v7, v15, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_getFieldDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v0, 0xc0

    .line 357
    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 358
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 359
    invoke-interface {v15, v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 360
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "scanInt"

    const-string v2, "(C)I"

    const/16 v3, 0xb6

    invoke-interface {v15, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-class v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(I)Ljava/lang/Enum;"

    move-object/from16 v2, v26

    invoke-interface {v15, v3, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa7

    .line 362
    invoke-interface {v15, v0, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 364
    invoke-interface {v15, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/4 v0, 0x0

    const/16 v1, 0x19

    .line 365
    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 366
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 367
    invoke-interface {v15, v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 368
    const-class v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";C)Ljava/lang/Enum;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scanEnum"

    const/16 v3, 0xb6

    invoke-interface {v15, v3, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-interface {v15, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v0, 0xc0

    .line 372
    invoke-static {v11}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    move/from16 v17, v20

    move-object/from16 v19, v21

    move/from16 v16, v24

    goto/16 :goto_24e

    :cond_89f
    move/from16 v24, v2

    move-object v1, v3

    .line 374
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_ace

    .line 376
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 377
    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_98b

    .line 378
    const-class v0, Ljava/util/List;

    if-eq v11, v0, :cond_8da

    const-class v0, Ljava/util/Collections;

    if-eq v11, v0, :cond_8da

    const-class v0, Ljava/util/ArrayList;

    if-ne v11, v0, :cond_8bf

    goto :goto_8da

    .line 386
    :cond_8bf
    invoke-static {v11}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 387
    const-class v0, Lcom/alibaba/fastjson/util/TypeUtils;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "createCollection"

    const-string v3, "(Ljava/lang/Class;)Ljava/util/Collection;"

    const/16 v9, 0xb8

    invoke-interface {v15, v9, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8f9

    :cond_8da
    :goto_8da
    const/16 v0, 0xbb

    .line 382
    const-class v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v0, 0x59

    .line 383
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0xb7

    .line 384
    const-class v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<init>"

    const-string v9, "()V"

    invoke-interface {v15, v0, v2, v3, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :goto_8f9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x3a

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 392
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x10

    .line 394
    invoke-interface {v15, v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 395
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v3, "scanStringArray"

    const-string v9, "(Ljava/util/Collection;C)V"

    const/16 v10, 0xb6

    invoke-interface {v15, v10, v0, v3, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 398
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 399
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v9, 0xb4

    invoke-interface {v15, v9, v2, v14, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    .line 400
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v2, 0xa0

    .line 401
    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v2, 0x1

    .line 402
    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3a

    invoke-interface {v15, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 405
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    move/from16 v2, v24

    const/16 v9, 0xb8

    goto/16 :goto_248

    :cond_98b
    const/16 v9, 0xb4

    .line 408
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 409
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x19

    invoke-interface {v15, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 410
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v4, "token"

    const-string v12, "()I"

    const/16 v13, 0xb6

    invoke-interface {v15, v13, v3, v4, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "token"

    .line 411
    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x36

    invoke-interface {v15, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v3, "token"

    .line 413
    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x15

    invoke-interface {v15, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    if-nez v24, :cond_9c1

    const/16 v3, 0xe

    goto :goto_9c3

    :cond_9c1
    const/16 v3, 0x10

    .line 415
    :goto_9c3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v4, 0x9f

    .line 416
    invoke-interface {v15, v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v4, 0x1

    const/16 v12, 0x19

    .line 418
    invoke-interface {v15, v12, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 419
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v15, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 420
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v4, "throwException"

    move-object/from16 v13, v23

    const/16 v12, 0xb6

    invoke-interface {v15, v12, v3, v4, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 424
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 425
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    const/16 v14, 0x19

    invoke-interface {v15, v14, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 426
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v9, "getCurrent"

    invoke-interface {v15, v12, v4, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x5b

    const/16 v9, 0x10

    .line 427
    invoke-interface {v15, v9, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xa0

    .line 428
    invoke-interface {v15, v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 430
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v14, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 431
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v9, "next"

    invoke-interface {v15, v12, v4, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x57

    .line 432
    invoke-interface {v15, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 433
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v14, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xe

    .line 434
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 435
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v9, "setToken"

    invoke-interface {v15, v12, v4, v9, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xa7

    .line 436
    invoke-interface {v15, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 438
    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 439
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v14, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v2, 0xe

    .line 440
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 441
    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v4, "nextToken"

    invoke-interface {v15, v12, v2, v4, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-interface {v15, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    move/from16 v2, v24

    const/4 v3, 0x0

    .line 444
    invoke-direct {v6, v15, v11, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_newCollection(Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/lang/Class;IZ)V

    const/16 v3, 0x59

    .line 445
    invoke-interface {v15, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 446
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x3a

    invoke-interface {v15, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 447
    invoke-direct {v6, v7, v15, v5, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_getCollectionFieldItemDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V

    const/4 v1, 0x1

    const/16 v3, 0x19

    .line 448
    invoke-interface {v15, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 449
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 450
    invoke-interface {v15, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 451
    const-class v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(Ljava/util/Collection;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 454
    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "L"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)V"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "parseArray"

    const/16 v9, 0xb8

    .line 451
    invoke-interface {v15, v9, v0, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_248

    :cond_ace
    move-object/from16 v13, v23

    move/from16 v2, v24

    const/16 v9, 0xb8

    .line 458
    invoke-virtual {v11}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b49

    .line 459
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x19

    invoke-interface {v15, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xe

    .line 460
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 461
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v4, "nextToken"

    const/16 v10, 0xb6

    invoke-interface {v15, v10, v0, v4, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    .line 463
    invoke-interface {v15, v3, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x0

    .line 464
    invoke-interface {v15, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 465
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 466
    const-class v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getFieldType"

    const-string v4, "(I)Ljava/lang/reflect/Type;"

    invoke-interface {v15, v10, v0, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v3, "parseObject"

    const-string v4, "(Ljava/lang/reflect/Type;)Ljava/lang/Object;"

    invoke-interface {v15, v10, v0, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc0

    .line 471
    invoke-static {v11}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v0, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3a

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    move/from16 v16, v2

    move/from16 v17, v20

    move-object/from16 v19, v21

    const/16 v9, 0x3a

    const/16 v11, 0xb8

    goto/16 :goto_c9e

    :cond_b49
    const/4 v14, 0x1

    .line 474
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 475
    new-instance v13, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v13}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 477
    const-class v3, Ljava/util/Date;

    if-ne v11, v3, :cond_bd0

    .line 478
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x19

    invoke-interface {v15, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 479
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v4, "getCurrent"

    const/16 v9, 0xb6

    invoke-interface {v15, v9, v3, v4, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x31

    .line 480
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v15, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v3, 0xa0

    .line 481
    invoke-interface {v15, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v3, 0xbb

    .line 483
    const-class v4, Ljava/util/Date;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v15, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v3, 0x59

    .line 484
    invoke-interface {v15, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 486
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x19

    invoke-interface {v15, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0x10

    .line 487
    invoke-interface {v15, v3, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 488
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v9, "scanLong"

    const-string v10, "(C)J"

    const/16 v12, 0xb6

    invoke-interface {v15, v12, v4, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb7

    .line 490
    const-class v9, Ljava/util/Date;

    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "<init>"

    const-string v12, "(J)V"

    invoke-interface {v15, v4, v9, v10, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v9, 0x3a

    invoke-interface {v15, v9, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xa7

    .line 493
    invoke-interface {v15, v1, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto :goto_bd4

    :cond_bd0
    const/16 v3, 0x10

    const/16 v9, 0x3a

    .line 496
    :goto_bd4
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v0, 0xe

    .line 498
    invoke-direct {v6, v7, v15, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_quickNextToken(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;I)V

    const/16 v10, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v16, v2

    move-object v2, v15

    move/from16 v17, v20

    move-object v3, v5

    move-object/from16 v19, v21

    move-object v4, v11

    const/16 v11, 0xb8

    move/from16 v5, v16

    .line 500
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserObject(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;I)V

    .line 502
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x19

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 503
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "token"

    const-string v3, "()I"

    const/16 v4, 0xb6

    invoke-interface {v15, v4, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xf

    .line 504
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0x9f

    .line 505
    invoke-interface {v15, v0, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v0, 0x0

    .line 509
    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 510
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    if-nez v22, :cond_c29

    .line 512
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_c32

    :cond_c29
    const/16 v0, 0xf

    .line 514
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    :goto_c32
    const/16 v0, 0xb7

    .line 516
    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 517
    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 518
    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "I)V"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "check"

    .line 516
    invoke-interface {v15, v0, v1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-interface {v15, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto :goto_c9e

    :cond_c5f
    :goto_c5f
    move/from16 v16, v2

    move-object v1, v3

    move-object/from16 v19, v4

    move/from16 v17, v20

    const/16 v9, 0x3a

    const/16 v10, 0x10

    const/16 v11, 0xb8

    const/4 v14, 0x1

    .line 169
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x19

    invoke-interface {v15, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 170
    invoke-interface {v15, v10, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 171
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "scanInt"

    const-string v3, "(C)I"

    const/16 v4, 0xb6

    invoke-interface {v15, v4, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x36

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    :goto_c9e
    add-int/lit8 v2, v16, 0x1

    move/from16 v3, v17

    move-object/from16 v4, v19

    const/16 v5, 0xb8

    const/16 v9, 0x19

    const/4 v10, 0x1

    const/16 v11, 0xb6

    const/16 v12, 0x3a

    const/4 v13, 0x0

    const/16 v14, 0xb4

    goto/16 :goto_187

    :cond_cb2
    const/4 v0, 0x0

    const/16 v2, 0x10

    .line 525
    invoke-direct {v6, v7, v15, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_batchSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Z)V

    .line 527
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v4, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 528
    new-instance v5, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 529
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v9

    const/16 v11, 0x19

    invoke-interface {v15, v11, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 530
    sget-object v9, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v12, "getCurrent"

    const/16 v14, 0xb6

    invoke-interface {v15, v14, v9, v12, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x59

    .line 531
    invoke-interface {v15, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 532
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v9

    const/16 v12, 0x36

    invoke-interface {v15, v12, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v9, 0x2c

    .line 533
    invoke-interface {v15, v2, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v9, 0xa0

    .line 534
    invoke-interface {v15, v9, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 536
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v15, v11, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 537
    sget-object v9, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v12, "next"

    invoke-interface {v15, v14, v9, v12, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x57

    .line 538
    invoke-interface {v15, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 539
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v15, v11, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 540
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v15, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 541
    sget-object v9, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v11, "setToken"

    invoke-interface {v15, v14, v9, v11, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0xa7

    .line 542
    invoke-interface {v15, v9, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 544
    invoke-interface {v15, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 545
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v9, 0x15

    invoke-interface {v15, v9, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0x5d

    .line 546
    invoke-interface {v15, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xa0

    .line 547
    invoke-interface {v15, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 549
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v9, 0x19

    invoke-interface {v15, v9, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 550
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v11, "next"

    const/16 v12, 0xb6

    invoke-interface {v15, v12, v3, v11, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x57

    .line 551
    invoke-interface {v15, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 552
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v9, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xf

    .line 553
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v15, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 554
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v9, "setToken"

    invoke-interface {v15, v12, v3, v9, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa7

    .line 555
    invoke-interface {v15, v3, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 557
    invoke-interface {v15, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 558
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x15

    invoke-interface {v15, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x1a

    .line 559
    invoke-interface {v15, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xa0

    .line 560
    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 562
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x19

    invoke-interface {v15, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 563
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v4, "next"

    const/16 v9, 0xb6

    invoke-interface {v15, v9, v1, v4, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x57

    .line 564
    invoke-interface {v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 565
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x14

    .line 566
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 567
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v4, "setToken"

    invoke-interface {v15, v9, v1, v4, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa7

    .line 568
    invoke-interface {v15, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 570
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 571
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v15, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 572
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 573
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v1, "nextToken"

    invoke-interface {v15, v9, v0, v1, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-interface {v15, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const-string v0, "instance"

    .line 577
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v15, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb0

    .line 578
    invoke-interface {v15, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 579
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variantIndex:I
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$100(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {v15, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 580
    invoke-interface {v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    return-void
.end method

.method private _deserialze_list_obj(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;Ljava/lang/Class;I)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/asm/Label;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 1318
    new-instance v8, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v8}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1320
    sget-object v9, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v10, 0xb6

    const-string v11, "matchField"

    const-string v12, "([C)Z"

    invoke-interface {v2, v10, v9, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x99

    .line 1321
    invoke-interface {v2, v9, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1323
    invoke-direct {v0, v2, v1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V

    .line 1325
    new-instance v9, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v9}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string v11, "lexer"

    .line 1326
    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v12

    const/16 v13, 0x19

    invoke-interface {v2, v13, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1327
    sget-object v12, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v14, "token"

    const-string v15, "()I"

    invoke-interface {v2, v10, v12, v14, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x8

    .line 1328
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v12, 0xa0

    .line 1329
    invoke-interface {v2, v12, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1331
    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v13, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v12, 0x10

    .line 1332
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1333
    sget-object v12, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v13, "nextToken"

    const-string v6, "(I)V"

    invoke-interface {v2, v10, v12, v13, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0xa7

    .line 1334
    invoke-interface {v2, v12, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1337
    invoke-interface {v2, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1339
    new-instance v9, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v9}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v12, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v10, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    move-object/from16 v16, v8

    .line 1340
    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    const/16 v4, 0x19

    invoke-interface {v2, v4, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1341
    sget-object v8, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v4, 0xb6

    invoke-interface {v2, v4, v8, v14, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x15

    .line 1342
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v4, 0xa0

    .line 1343
    invoke-interface {v2, v4, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1345
    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    const/16 v8, 0x19

    invoke-interface {v2, v8, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xe

    .line 1346
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1347
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v8, 0xb6

    invoke-interface {v2, v8, v4, v13, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 1349
    invoke-direct {v0, v2, v5, v7, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_newCollection(Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/lang/Class;IZ)V

    const/16 v4, 0xa7

    .line 1351
    invoke-interface {v2, v4, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1353
    invoke-interface {v2, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1356
    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    const/16 v12, 0x19

    invoke-interface {v2, v12, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1357
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v2, v8, v4, v14, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xe

    .line 1358
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v4, 0x9f

    .line 1359
    invoke-interface {v2, v4, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1362
    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v12, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1363
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v2, v8, v4, v14, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xc

    .line 1364
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v12, 0xa0

    .line 1365
    invoke-interface {v2, v12, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v12, 0x0

    .line 1367
    invoke-direct {v0, v2, v5, v7, v12}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_newCollection(Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/lang/Class;IZ)V

    .line 1368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, p4

    move-object/from16 v18, v6

    iget-object v6, v12, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_asm"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    const/16 v3, 0x3a

    invoke-interface {v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    move-object/from16 v4, p6

    move-object/from16 v19, v18

    .line 1370
    invoke-direct {v0, v1, v2, v12, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_getCollectionFieldItemDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V

    move-object/from16 v20, v14

    const/4 v3, 0x1

    const/16 v14, 0x19

    .line 1371
    invoke-interface {v2, v14, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1372
    invoke-static/range {p6 .. p6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/4 v3, 0x3

    .line 1373
    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v3, 0xb8

    const-string v14, "java/lang/Integer"

    move-object/from16 v21, v8

    const-string v8, "valueOf"

    move-object/from16 v22, v13

    const-string v13, "(I)Ljava/lang/Integer;"

    .line 1374
    invoke-interface {v2, v3, v14, v8, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const-class v3, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "(L"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0xb9

    const-string v14, "deserialze"

    invoke-interface {v2, v13, v3, v14, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "list_item_value"

    .line 1377
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    const/16 v14, 0x3a

    invoke-interface {v2, v14, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1379
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v12, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    const/16 v14, 0x19

    invoke-interface {v2, v14, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1380
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v14, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1381
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Class;->isInterface()Z

    move-result v8

    const-string v14, "(Ljava/lang/Object;)Z"

    const-string v13, "add"

    if-eqz v8, :cond_1b2

    .line 1382
    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v23, v3

    const/16 v3, 0xb9

    invoke-interface {v2, v3, v8, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1bd

    :cond_1b2
    move-object/from16 v23, v3

    .line 1384
    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0xb6

    invoke-interface {v2, v8, v3, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1bd
    const/16 v3, 0x57

    .line 1386
    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    move-object/from16 v8, v16

    const/16 v3, 0xa7

    .line 1388
    invoke-interface {v2, v3, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1390
    invoke-interface {v2, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/4 v3, 0x0

    .line 1392
    invoke-direct {v0, v2, v5, v7, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_newCollection(Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/lang/Class;IZ)V

    .line 1394
    invoke-interface {v2, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v12, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v7, 0x3a

    invoke-interface {v2, v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1397
    iget-object v3, v12, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v3

    .line 1398
    invoke-direct {v0, v1, v2, v12, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_getCollectionFieldItemDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V

    const-string v9, "fastMatchToken"

    if-eqz v3, :cond_22e

    .line 1400
    const-class v10, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v10}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "getFastMatchToken"

    const/16 v4, 0xb9

    invoke-interface {v2, v4, v10, v7, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    const/16 v7, 0x36

    invoke-interface {v2, v7, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1403
    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    const/16 v10, 0x19

    invoke-interface {v2, v10, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1404
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    const/16 v10, 0x15

    invoke-interface {v2, v10, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1405
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    move-object/from16 v10, v19

    move-object/from16 v7, v22

    const/16 v5, 0xb6

    invoke-interface {v2, v5, v4, v7, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24a

    :cond_22e
    move-object/from16 v10, v19

    move-object/from16 v7, v22

    const/16 v4, 0x57

    .line 1407
    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    move-object/from16 v4, v21

    .line 1408
    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1409
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x36

    invoke-interface {v2, v5, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xc

    .line 1411
    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_quickNextToken(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;I)V

    :goto_24a
    const/4 v4, 0x1

    const/16 v5, 0x19

    .line 1415
    invoke-interface {v2, v5, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1416
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v8

    const-string v8, "()"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v8, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "getContext"

    const/16 v0, 0xb6

    invoke-interface {v2, v0, v4, v8, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "listContext"

    .line 1417
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v4, 0x3a

    invoke-interface {v2, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x1

    const/16 v4, 0x19

    .line 1419
    invoke-interface {v2, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v12, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1421
    iget-object v0, v12, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1422
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(Ljava/lang/Object;Ljava/lang/Object;)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v5, Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1423
    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "setContext"

    const/16 v8, 0xb6

    .line 1422
    invoke-interface {v2, v8, v0, v5, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x57

    .line 1424
    invoke-interface {v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1427
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1428
    new-instance v4, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/4 v5, 0x3

    .line 1431
    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const-string v5, "i"

    .line 1432
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    const/16 v8, 0x36

    invoke-interface {v2, v8, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1433
    invoke-interface {v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1435
    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    const/16 v8, 0x19

    invoke-interface {v2, v8, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1436
    sget-object v5, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    move-object/from16 v22, v7

    move-object/from16 v8, v20

    const/16 v7, 0xb6

    invoke-interface {v2, v7, v5, v8, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xf

    .line 1437
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v5, 0x9f

    .line 1439
    invoke-interface {v2, v5, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v5, 0x0

    const/16 v7, 0x19

    .line 1444
    invoke-interface {v2, v7, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1445
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    iget-object v4, v12, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_asm_list_item_deser__"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 1446
    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v10

    const/16 v10, 0xb4

    .line 1445
    invoke-interface {v2, v10, v7, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/16 v5, 0x19

    .line 1447
    invoke-interface {v2, v5, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1448
    invoke-static/range {p6 .. p6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const-string v4, "i"

    .line 1449
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x15

    invoke-interface {v2, v5, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v4, 0xb8

    const-string v5, "java/lang/Integer"

    const-string v7, "valueOf"

    const-string v10, "(I)Ljava/lang/Integer;"

    .line 1450
    invoke-interface {v2, v4, v5, v7, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    const-class v4, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(L"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "deserialze"

    const/16 v10, 0xb9

    invoke-interface {v2, v10, v4, v7, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v23

    .line 1453
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    const/16 v7, 0x3a

    invoke-interface {v2, v7, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v5, "i"

    .line 1455
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x1

    invoke-interface {v2, v5, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIincInsn(II)V

    .line 1457
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v12, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    const/16 v7, 0x19

    invoke-interface {v2, v7, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1458
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v7, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1459
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_3c1

    .line 1460
    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xb9

    invoke-interface {v2, v5, v4, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3ca

    .line 1462
    :cond_3c1
    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xb6

    invoke-interface {v2, v5, v4, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3ca
    const/16 v4, 0x57

    .line 1464
    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/4 v4, 0x1

    .line 1466
    invoke-interface {v2, v7, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1467
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v12, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v7, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1468
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v5, "checkListResolve"

    const-string v6, "(Ljava/util/Collection;)V"

    const/16 v10, 0xb6

    invoke-interface {v2, v10, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v7, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1471
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v2, v10, v4, v8, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x10

    .line 1472
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v4, 0xa0

    .line 1473
    invoke-interface {v2, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    if-eqz v3, :cond_430

    .line 1476
    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1477
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x15

    invoke-interface {v2, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1478
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    move-object/from16 v4, v20

    move-object/from16 v5, v22

    invoke-interface {v2, v10, v3, v5, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xa7

    move-object/from16 v3, p0

    goto :goto_439

    :cond_430
    const/16 v4, 0xc

    move-object/from16 v3, p0

    .line 1480
    invoke-direct {v3, v1, v2, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_quickNextToken(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;I)V

    const/16 v4, 0xa7

    .line 1483
    :goto_439
    invoke-interface {v2, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    move-object/from16 v0, v17

    .line 1485
    invoke-interface {v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/4 v0, 0x1

    .line 1490
    invoke-interface {v2, v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v0, "listContext"

    .line 1491
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1492
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v5, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "setContext"

    const/16 v6, 0xb6

    invoke-interface {v2, v6, v0, v5, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v4, 0x19

    invoke-interface {v2, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1496
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v2, v6, v0, v8, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xf

    .line 1497
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    move-object/from16 v0, p3

    const/16 v4, 0xa0

    .line 1498
    invoke-interface {v2, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1500
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_quickNextTokenComma(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V

    move-object/from16 v0, v19

    .line 1503
    invoke-interface {v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    return-void
.end method

.method private _deserialze_obj(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/asm/Label;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;I)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/asm/Label;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    .line 1659
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1660
    new-instance v9, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v9}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string v1, "lexer"

    .line 1662
    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v10, 0x19

    invoke-interface {v7, v10, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v11, 0x0

    .line 1663
    invoke-interface {v7, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1664
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v8, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_asm_prefix__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb4

    const-string v4, "[C"

    invoke-interface {v7, v3, v1, v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v12, 0xb6

    const-string v2, "matchField"

    const-string v3, "([C)Z"

    invoke-interface {v7, v12, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9a

    .line 1666
    invoke-interface {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v13, 0x1

    .line 1667
    invoke-interface {v7, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_asm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v14, 0x3a

    invoke-interface {v7, v14, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xa7

    .line 1670
    invoke-interface {v7, v1, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1672
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    move-object/from16 v15, p0

    move/from16 v5, p6

    .line 1674
    invoke-direct {v15, v7, v6, v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V

    const-string v0, "matchedCount"

    .line 1677
    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x15

    invoke-interface {v7, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v1, 0x4

    .line 1678
    invoke-interface {v7, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0x60

    .line 1679
    invoke-interface {v7, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1680
    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x36

    invoke-interface {v7, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 1682
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserObject(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;I)V

    .line 1684
    invoke-interface {v7, v10, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1685
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v1, "getResolveStatus"

    const-string v2, "()I"

    invoke-interface {v7, v12, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xa0

    .line 1687
    invoke-interface {v7, v0, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1689
    invoke-interface {v7, v10, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1690
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getLastResolveTask"

    invoke-interface {v7, v12, v0, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "resolveTask"

    .line 1691
    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v14, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1693
    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v10, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1694
    invoke-interface {v7, v10, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1695
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getContext"

    invoke-interface {v7, v12, v1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    const-class v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb5

    const-string v4, "ownerContext"

    invoke-interface {v7, v3, v1, v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v10, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1699
    invoke-interface {v7, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1700
    iget-object v0, v8, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1701
    const-class v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(Ljava/lang/String;)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1702
    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getFieldDeserializer"

    .line 1701
    invoke-interface {v7, v12, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    const-class v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fieldDeserializer"

    invoke-interface {v7, v3, v0, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    invoke-interface {v7, v10, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1706
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1707
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-string v1, "setResolveStatus"

    const-string v2, "(I)V"

    invoke-interface {v7, v12, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    invoke-interface {v7, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    return-void
.end method

.method private _getCollectionFieldItemDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1598
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v1, 0x19

    const/4 v2, 0x0

    .line 1599
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1600
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_asm_list_item_deser__"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v6, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 1601
    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb4

    .line 1600
    invoke-interface {p2, v7, v3, v4, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc7

    .line 1602
    invoke-interface {p2, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1604
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v3, 0x1

    .line 1606
    invoke-interface {p2, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1607
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "()"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v6, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xb6

    const-string v8, "getConfig"

    invoke-interface {p2, v6, v3, v8, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    invoke-static {p4}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object p4

    invoke-interface {p2, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1609
    const-class p4, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {p4}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(Ljava/lang/reflect/Type;)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 1610
    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getDeserializer"

    .line 1609
    invoke-interface {p2, v6, p4, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object p4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 1613
    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xb5

    .line 1612
    invoke-interface {p2, v6, p4, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1616
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1617
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-class p4, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 1618
    invoke-static {p4}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p4

    .line 1617
    invoke-interface {p2, v7, p1, p3, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private _getFieldDeser(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .registers 13

    .line 1763
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v1, 0x19

    const/4 v2, 0x0

    .line 1764
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1765
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_asm_deser__"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v6, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb4

    invoke-interface {p2, v7, v3, v4, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc7

    .line 1766
    invoke-interface {p2, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1768
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v3, 0x1

    .line 1770
    invoke-interface {p2, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1771
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "()"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v6, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xb6

    const-string v8, "getConfig"

    invoke-interface {p2, v6, v3, v8, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    iget-object v3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1773
    const-class v3, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(Ljava/lang/reflect/Type;)"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v8, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 1774
    invoke-static {v8}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "getDeserializer"

    .line 1773
    invoke-interface {p2, v6, v3, v8, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v6, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0xb5

    invoke-interface {p2, v8, v3, v4, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1780
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1781
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-class v0, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v7, p1, p3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private _init(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V
    .registers 17

    move-object v1, p1

    .line 1836
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldInfoList:[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v0

    array-length v0, v0

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_8
    const-string v8, "[C"

    const-string v9, "_asm_prefix__"

    const/4 v10, 0x1

    if-ge v2, v0, :cond_31

    .line 1837
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldInfoList:[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v3

    aget-object v3, v3, v2

    .line 1839
    new-instance v4, Lcom/alibaba/fastjson/asm/FieldWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, p1, v10, v3, v8}, Lcom/alibaba/fastjson/asm/FieldWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 1840
    invoke-virtual {v4}, Lcom/alibaba/fastjson/asm/FieldWriter;->visitEnd()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1843
    :cond_31
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldInfoList:[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x0

    :goto_37
    if-ge v2, v0, :cond_96

    .line 1844
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldInfoList:[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v3

    aget-object v3, v3, v2

    .line 1845
    iget-object v4, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1847
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_48

    goto :goto_93

    .line 1851
    :cond_48
    const-class v5, Ljava/util/Collection;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 1852
    new-instance v4, Lcom/alibaba/fastjson/asm/FieldWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_asm_list_item_deser__"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 1853
    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v10, v3, v5}, Lcom/alibaba/fastjson/asm/FieldWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 1854
    invoke-virtual {v4}, Lcom/alibaba/fastjson/asm/FieldWriter;->visitEnd()V

    goto :goto_93

    .line 1856
    :cond_72
    new-instance v4, Lcom/alibaba/fastjson/asm/FieldWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_asm_deser__"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 1857
    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v10, v3, v5}, Lcom/alibaba/fastjson/asm/FieldWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 1858
    invoke-virtual {v4}, Lcom/alibaba/fastjson/asm/FieldWriter;->visitEnd()V

    :goto_93
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 1862
    :cond_96
    new-instance v11, Lcom/alibaba/fastjson/asm/MethodWriter;

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "("

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 1863
    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ")V"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "<init>"

    move-object v0, v11

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/asm/MethodWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v0, 0x19

    .line 1864
    invoke-interface {v11, v0, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1865
    invoke-interface {v11, v0, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v1, 0x2

    .line 1866
    invoke-interface {v11, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb7

    .line 1867
    const-class v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 1868
    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<init>"

    .line 1867
    invoke-interface {v11, v1, v2, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldInfoList:[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    :goto_107
    if-ge v2, v1, :cond_155

    .line 1872
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldInfoList:[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$200(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v3

    aget-object v3, v3, v2

    .line 1874
    invoke-interface {v11, v0, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1875
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v4, 0xb6

    const-string v5, "java/lang/String"

    const-string v6, "toCharArray"

    const-string v10, "()[C"

    .line 1876
    invoke-interface {v11, v4, v5, v6, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xb5

    .line 1877
    # getter for: Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->access$300(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v4, v5, v3, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_107

    :cond_155
    const/16 v0, 0xb1

    .line 1881
    invoke-interface {v11, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/4 v0, 0x4

    .line 1882
    invoke-interface {v11, v0, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 1883
    invoke-interface {v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    return-void
.end method

.method private _isFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;ILcom/alibaba/fastjson/asm/Label;)V
    .registers 7

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_asm_flag_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v1, p3, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x15

    invoke-interface {p1, v0, p2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 p2, 0x1

    shl-int/2addr p2, p3

    .line 107
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 p2, 0x7e

    .line 108
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 p2, 0x99

    .line 110
    invoke-interface {p1, p2, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    return-void
.end method

.method private _loadAndSet(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .registers 11

    .line 1211
    iget-object v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1212
    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 1214
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v3, 0x15

    const-string v4, "instance"

    const-string v5, "_asm"

    const/16 v6, 0x19

    if-ne v0, v2, :cond_34

    .line 1215
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1217
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto/16 :goto_1f7

    .line 1218
    :cond_34
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_1d5

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_1d5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_1d5

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_46

    goto/16 :goto_1d5

    .line 1225
    :cond_46
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    if-ne v0, v2, :cond_b7

    .line 1226
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x16

    .line 1227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1228
    iget-object v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9e

    const/16 v0, 0xb6

    .line 1229
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->getInstClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 1230
    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v2

    .line 1229
    invoke-interface {p2, v0, p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    iget-object p1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    sget-object p3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f7

    const/16 p1, 0x57

    .line 1232
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_1f7

    :cond_9e
    const/16 p1, 0xb5

    .line 1235
    iget-object v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object p3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1236
    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    .line 1235
    invoke-interface {p2, p1, v0, v1, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f7

    .line 1238
    :cond_b7
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_e1

    .line 1239
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x17

    .line 1240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1241
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto/16 :goto_1f7

    .line 1242
    :cond_e1
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_10b

    .line 1243
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x18

    .line 1244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1245
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto/16 :goto_1f7

    .line 1246
    :cond_10b
    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_133

    .line 1247
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1249
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto/16 :goto_1f7

    .line 1250
    :cond_133
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_15d

    .line 1251
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1253
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto/16 :goto_1f7

    .line 1254
    :cond_15d
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1b2

    .line 1255
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v6, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1256
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 1257
    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_196

    .line 1258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v6, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xc0

    .line 1259
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto :goto_1ae

    .line 1261
    :cond_196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1263
    :goto_1ae
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto :goto_1f7

    .line 1266
    :cond_1b2
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1268
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    goto :goto_1f7

    .line 1222
    :cond_1d5
    :goto_1d5
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v6, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1224
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    :cond_1f7
    :goto_1f7
    return-void
.end method

.method private _newCollection(Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/lang/Class;IZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Ljava/lang/Class<",
            "*>;IZ)V"
        }
    .end annotation

    .line 1622
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "()V"

    const-string v2, "<init>"

    const/16 v3, 0xb7

    const/16 v4, 0x59

    const/16 v5, 0xbb

    if-eqz v0, :cond_21

    if-nez p4, :cond_21

    const-string p3, "java/util/ArrayList"

    .line 1623
    invoke-interface {p1, v5, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1624
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1625
    invoke-interface {p1, v3, p3, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e0

    .line 1626
    :cond_21
    const-class v0, Ljava/util/LinkedList;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_42

    if-nez p4, :cond_42

    .line 1627
    const-class p3, Ljava/util/LinkedList;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v5, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1628
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1629
    const-class p3, Ljava/util/LinkedList;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v3, p3, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e0

    .line 1630
    :cond_42
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1631
    const-class p3, Ljava/util/HashSet;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v5, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1632
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1633
    const-class p3, Ljava/util/HashSet;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v3, p3, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e0

    .line 1634
    :cond_61
    const-class v0, Ljava/util/TreeSet;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 1635
    const-class p3, Ljava/util/TreeSet;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v5, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1636
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1637
    const-class p3, Ljava/util/TreeSet;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v3, p3, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e0

    .line 1638
    :cond_7f
    const-class v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 1639
    const-class p3, Ljava/util/LinkedHashSet;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v5, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1640
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1641
    const-class p3, Ljava/util/LinkedHashSet;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v3, p3, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e0

    :cond_9d
    if-eqz p4, :cond_b5

    .line 1643
    const-class p3, Ljava/util/HashSet;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v5, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1644
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1645
    const-class p3, Ljava/util/HashSet;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v3, p3, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e0

    :cond_b5
    const/16 p4, 0x19

    const/4 v0, 0x0

    .line 1647
    invoke-interface {p1, p4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1648
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 p3, 0xb6

    .line 1649
    const-class p4, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {p4}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "getFieldType"

    const-string v1, "(I)Ljava/lang/reflect/Type;"

    invoke-interface {p1, p3, p4, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0xb8

    .line 1651
    const-class p4, Lcom/alibaba/fastjson/util/TypeUtils;

    invoke-static {p4}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "createCollection"

    const-string v1, "(Ljava/lang/reflect/Type;)Ljava/util/Collection;"

    invoke-interface {p1, p3, p4, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_e0
    const/16 p3, 0xc0

    .line 1654
    invoke-static {p2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    return-void
.end method

.method private _quickNextToken(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;I)V
    .registers 12

    .line 1507
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string v2, "lexer"

    .line 1508
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x19

    invoke-interface {p2, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1509
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v5, 0xb6

    const-string v6, "getCurrent"

    const-string v7, "()C"

    invoke-interface {p2, v5, v3, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x10

    const/16 v6, 0xc

    if-ne p3, v6, :cond_2c

    const/16 v6, 0x7b

    .line 1511
    invoke-interface {p2, v3, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_35

    :cond_2c
    const/16 v6, 0xe

    if-ne p3, v6, :cond_85

    const/16 v6, 0x5b

    .line 1513
    invoke-interface {p2, v3, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    :goto_35
    const/16 v3, 0xa0

    .line 1518
    invoke-interface {p2, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1520
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1521
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v6, "next"

    invoke-interface {p2, v5, v3, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x57

    .line 1522
    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1523
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1524
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1525
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v6, "setToken"

    const-string v7, "(I)V"

    invoke-interface {p2, v5, v3, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa7

    .line 1526
    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1528
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1529
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, v4, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1530
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1531
    sget-object p1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string p3, "nextToken"

    invoke-interface {p2, v5, p1, p3, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    return-void

    .line 1515
    :cond_85
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private _quickNextTokenComma(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
    .registers 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1537
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v4, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v5, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v6, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string v7, "lexer"

    .line 1538
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x19

    invoke-interface {v1, v9, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1539
    sget-object v8, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v10, 0xb6

    const-string v11, "getCurrent"

    const-string v12, "()C"

    invoke-interface {v1, v10, v8, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x59

    .line 1540
    invoke-interface {v1, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const-string v8, "ch"

    .line 1541
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v11

    const/16 v13, 0x36

    invoke-interface {v1, v13, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v11, 0x10

    const/16 v13, 0x2c

    .line 1542
    invoke-interface {v1, v11, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0xa0

    .line 1543
    invoke-interface {v1, v13, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1545
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v9, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1546
    sget-object v14, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v15, "next"

    invoke-interface {v1, v10, v14, v15, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x57

    .line 1547
    invoke-interface {v1, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1548
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v9, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1549
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v1, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1550
    sget-object v14, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v9, "setToken"

    const-string v13, "(I)V"

    invoke-interface {v1, v10, v14, v9, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0xa7

    .line 1551
    invoke-interface {v1, v14, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1553
    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1554
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v14, 0x15

    invoke-interface {v1, v14, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0x7d

    .line 1555
    invoke-interface {v1, v11, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xa0

    .line 1556
    invoke-interface {v1, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1558
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v11, 0x19

    invoke-interface {v1, v11, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1559
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v1, v10, v3, v15, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x57

    .line 1560
    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1561
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v11, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xd

    .line 1562
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1563
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v1, v10, v3, v9, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa7

    .line 1564
    invoke-interface {v1, v3, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1566
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1567
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v14, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0x5d

    const/16 v4, 0x10

    .line 1568
    invoke-interface {v1, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xa0

    .line 1569
    invoke-interface {v1, v3, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1571
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x19

    invoke-interface {v1, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1572
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v1, v10, v3, v15, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x57

    .line 1573
    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1574
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xf

    .line 1575
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1576
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v1, v10, v3, v9, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa7

    .line 1577
    invoke-interface {v1, v3, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1579
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1580
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v14, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0x1a

    const/16 v4, 0x10

    .line 1581
    invoke-interface {v1, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xa0

    .line 1582
    invoke-interface {v1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1584
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x19

    invoke-interface {v1, v4, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0x14

    .line 1585
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1586
    sget-object v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    invoke-interface {v1, v10, v3, v9, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa7

    .line 1587
    invoke-interface {v1, v3, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1589
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1590
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1591
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const-string v2, "nextToken"

    const-string v3, "()V"

    invoke-interface {v1, v10, v0, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    return-void
.end method

.method private _set(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .registers 7

    .line 1273
    iget-object p1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_38

    .line 1275
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 1276
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0xb9

    goto :goto_13

    :cond_11
    const/16 v0, 0xb6

    :goto_13
    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, v1, v2, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    iget-object p1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    sget-object p3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    const/16 p1, 0x57

    .line 1279
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_4f

    :cond_38
    const/16 p1, 0xb5

    .line 1282
    iget-object v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object p3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1283
    invoke-static {p3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    .line 1282
    invoke-interface {p2, p1, v0, v1, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method private _setContext(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
    .registers 8

    const/16 v0, 0x19

    const/4 v1, 0x1

    .line 1288
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v1, "context"

    .line 1289
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1290
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")V"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb6

    const-string v4, "setContext"

    invoke-interface {p2, v3, v1, v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string v2, "childContext"

    .line 1293
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v0, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xc6

    .line 1294
    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1296
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string v2, "instance"

    .line 1297
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1298
    const-class p1, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xb5

    const-string v2, "object"

    const-string v3, "Ljava/lang/Object;"

    invoke-interface {p2, v0, p1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    return-void
.end method

.method private _setFlag(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;I)V
    .registers 7

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_asm_flag_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v1, p3, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x15

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v1, 0x1

    shl-int p3, v1, p3

    .line 100
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 p3, 0x80

    .line 101
    invoke-interface {p1, p3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 102
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result p2

    const/16 p3, 0x36

    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method

.method private defineVarLexer(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;)V
    .registers 7

    const/16 v0, 0x19

    const/4 v1, 0x1

    .line 1161
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1162
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->DefaultJSONParser:Ljava/lang/String;

    const-class v1, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    const-string v3, "lexer"

    invoke-interface {p2, v2, v0, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->JSONLexerBase:Ljava/lang/String;

    const/16 v1, 0xc0

    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 1164
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->var(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x3a

    invoke-interface {p2, v0, p1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method


# virtual methods
.method public createJavaBeanDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_cc

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FastjsonASMDeserializer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 71
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_6b

    :cond_6a
    move-object v1, v0

    .line 79
    :goto_6b
    new-instance v2, Lcom/alibaba/fastjson/asm/ClassWriter;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/ClassWriter;-><init>()V

    const/16 v4, 0x31

    const/16 v5, 0x21

    .line 80
    const-class v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v2

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/fastjson/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 82
    new-instance v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    const/4 v4, 0x3

    invoke-direct {v3, v0, p1, p2, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;I)V

    invoke-direct {p0, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_init(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V

    .line 83
    new-instance v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    invoke-direct {v3, v0, p1, p2, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;I)V

    invoke-direct {p0, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_createInstance(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V

    .line 84
    new-instance v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    const/4 v4, 0x5

    invoke-direct {v3, v0, p1, p2, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;I)V

    invoke-direct {p0, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserialze(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V

    .line 86
    new-instance v3, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;

    const/4 v4, 0x4

    invoke-direct {v3, v0, p1, p2, v4}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;I)V

    invoke-direct {p0, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->_deserialzeArrayMapping(Lcom/alibaba/fastjson/asm/ClassWriter;Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;)V

    .line 87
    invoke-virtual {v2}, Lcom/alibaba/fastjson/asm/ClassWriter;->toByteArray()[B

    move-result-object v0

    .line 89
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v0, v4, v3}, Lcom/alibaba/fastjson/util/ASMClassLoader;->defineClassPublic(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 90
    const-class v3, Lcom/alibaba/fastjson/parser/ParserConfig;

    aput-object v3, v2, v4

    const-class v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 93
    check-cast p1, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    return-object p1

    .line 62
    :cond_cc
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not support type :"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
