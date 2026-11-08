.class public Lcom/alibaba/fastjson/util/FieldInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/alibaba/fastjson/util/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final alternateNames:[Ljava/lang/String;

.field public final declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final field:Ljava/lang/reflect/Field;

.field public final fieldAccess:Z

.field private final fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final fieldClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final fieldTransient:Z

.field public final fieldType:Ljava/lang/reflect/Type;

.field public final format:Ljava/lang/String;

.field public final getOnly:Z

.field public final isEnum:Z

.field public final jsonDirect:Z

.field public final label:Ljava/lang/String;

.field public final method:Ljava/lang/reflect/Method;

.field private final methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final name:Ljava/lang/String;

.field public final nameHashCode:J

.field public final name_chars:[C

.field private ordinal:I

.field public final parserFeatures:I

.field public final serialzeFeatures:I

.field public final unwrapped:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Field;",
            "III)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    if-gez p6, :cond_9

    const/4 p6, 0x0

    .line 65
    :cond_9
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 67
    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 68
    iput-object p4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    const/4 p2, 0x0

    .line 69
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 70
    iput-object p5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 71
    iput p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 72
    iput p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 73
    iput p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    .line 75
    invoke-virtual {p3}, Ljava/lang/Class;->isEnum()Z

    move-result p3

    iput-boolean p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    if-eqz p5, :cond_3d

    .line 78
    invoke-virtual {p5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p3

    and-int/lit8 p4, p3, 0x1

    if-nez p4, :cond_33

    .line 79
    iget-object p4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez p4, :cond_31

    goto :goto_33

    :cond_31
    const/4 p4, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 p4, 0x1

    :goto_34
    iput-boolean p4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 80
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    goto :goto_41

    .line 82
    :cond_3d
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 83
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 86
    :goto_41
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->genFieldNameChars()[C

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    if-eqz p5, :cond_4c

    .line 89
    invoke-static {p5}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    :cond_4c
    const-string p3, ""

    .line 92
    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    if-nez p5, :cond_54

    move-object p3, p2

    goto :goto_5c

    .line 93
    :cond_54
    const-class p3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {p5, p3}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p3

    check-cast p3, Lcom/alibaba/fastjson/annotation/JSONField;

    :goto_5c
    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 94
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 95
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 96
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->jsonDirect:Z

    .line 97
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    .line 98
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 101
    invoke-direct {p0, p1, p3}, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode64(Ljava/lang/String;Lcom/alibaba/fastjson/annotation/JSONField;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "III",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    .line 115
    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;Ljava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "III",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    if-eqz p3, :cond_13

    .line 132
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object p1, v1

    :cond_13
    if-gez p6, :cond_16

    const/4 p6, 0x0

    .line 142
    :cond_16
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 143
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 144
    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 145
    iput p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 146
    iput p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 147
    iput p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    .line 148
    iput-object p9, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 149
    iput-object p10, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    const/4 p6, 0x1

    if-eqz p3, :cond_4c

    .line 152
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p7

    and-int/lit8 p8, p7, 0x1

    if-nez p8, :cond_36

    if-nez p2, :cond_34

    goto :goto_36

    :cond_34
    const/4 p8, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 p8, 0x1

    .line 153
    :goto_37
    iput-boolean p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 154
    invoke-static {p7}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result p7

    if-nez p7, :cond_48

    .line 155
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->isTransient(Ljava/lang/reflect/Method;)Z

    move-result p7

    if-eqz p7, :cond_46

    goto :goto_48

    :cond_46
    const/4 p7, 0x0

    goto :goto_49

    :cond_48
    :goto_48
    const/4 p7, 0x1

    :goto_49
    iput-boolean p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    goto :goto_54

    .line 157
    :cond_4c
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 158
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->isTransient(Ljava/lang/reflect/Method;)Z

    move-result p7

    iput-boolean p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    :goto_54
    if-eqz p11, :cond_5f

    .line 161
    invoke-virtual {p11}, Ljava/lang/String;->length()I

    move-result p7

    if-lez p7, :cond_5f

    .line 162
    iput-object p11, p0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    goto :goto_63

    :cond_5f
    const-string p7, ""

    .line 164
    iput-object p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    .line 168
    :goto_63
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object p7

    .line 170
    invoke-direct {p0, p1, p7}, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode64(Ljava/lang/String;Lcom/alibaba/fastjson/annotation/JSONField;)J

    move-result-wide p8

    iput-wide p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    const/4 p1, 0x0

    if-eqz p7, :cond_91

    .line 174
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object p8

    .line 176
    invoke-virtual {p8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p9

    invoke-virtual {p9}, Ljava/lang/String;->length()I

    move-result p9

    if-nez p9, :cond_7f

    goto :goto_80

    :cond_7f
    move-object p1, p8

    .line 179
    :goto_80
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONField;->jsonDirect()Z

    move-result p8

    .line 180
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONField;->unwrapped()Z

    move-result p9

    iput-boolean p9, p0, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    .line 181
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONField;->alternateNames()[Ljava/lang/String;

    move-result-object p7

    iput-object p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    goto :goto_98

    .line 184
    :cond_91
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    new-array p7, v0, [Ljava/lang/String;

    .line 185
    iput-object p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    const/4 p8, 0x0

    .line 187
    :goto_98
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 189
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->genFieldNameChars()[C

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    if-eqz p2, :cond_a5

    .line 192
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    :cond_a5
    if-eqz p3, :cond_aa

    .line 196
    invoke-static {p3}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    :cond_aa
    if-eqz p2, :cond_e1

    .line 204
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length p3, p1

    if-ne p3, p6, :cond_bd

    .line 205
    aget-object p1, p1, v0

    .line 206
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p3

    aget-object p3, p3, v0

    :goto_bb
    const/4 p7, 0x0

    goto :goto_da

    .line 207
    :cond_bd
    array-length p3, p1

    const/4 p7, 0x2

    if-ne p3, p7, :cond_d1

    aget-object p3, p1, v0

    const-class p7, Ljava/lang/String;

    if-ne p3, p7, :cond_d1

    aget-object p3, p1, p6

    const-class p7, Ljava/lang/Object;

    if-ne p3, p7, :cond_d1

    .line 208
    aget-object p1, p1, v0

    move-object p3, p1

    goto :goto_bb

    .line 210
    :cond_d1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 211
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object p3

    const/4 p7, 0x1

    .line 214
    :goto_da
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    goto :goto_f8

    .line 216
    :cond_e1
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    .line 217
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 218
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p7

    iput-object p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 219
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p3

    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p7

    move-object p3, p2

    .line 221
    :goto_f8
    iput-boolean p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-eqz p8, :cond_101

    .line 222
    const-class p2, Ljava/lang/String;

    if-ne p1, p2, :cond_101

    const/4 v0, 0x1

    :cond_101
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->jsonDirect:Z

    if-eqz p4, :cond_125

    .line 224
    const-class p2, Ljava/lang/Object;

    if-ne p1, p2, :cond_125

    instance-of p2, p3, Ljava/lang/reflect/TypeVariable;

    if-eqz p2, :cond_125

    .line 225
    move-object p2, p3

    check-cast p2, Ljava/lang/reflect/TypeVariable;

    .line 226
    invoke-static {p4, p5, p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getInheritGenericType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p2

    if-eqz p2, :cond_125

    .line 228
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 229
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 231
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    return-void

    .line 238
    :cond_125
    instance-of p2, p3, Ljava/lang/Class;

    if-nez p2, :cond_145

    if-eqz p5, :cond_12c

    goto :goto_12d

    :cond_12c
    move-object p5, p4

    .line 239
    :goto_12d
    invoke-static {p4, p5, p3, p12}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p2

    if-eq p2, p3, :cond_144

    .line 242
    instance-of p3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p3, :cond_13c

    .line 243
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_144

    .line 244
    :cond_13c
    instance-of p3, p2, Ljava/lang/Class;

    if-eqz p3, :cond_144

    .line 245
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    :cond_144
    :goto_144
    move-object p3, p2

    .line 250
    :cond_145
    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 251
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 253
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    return-void
.end method

.method private static getArgument([Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4c

    .line 368
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4c

    :cond_a
    const/4 v1, 0x0

    .line 372
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_4b

    .line 373
    aget-object v2, p0, v0

    .line 374
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    const/4 v4, 0x1

    if-eqz v3, :cond_35

    .line 375
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 376
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 377
    invoke-static {v3, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getArgument([Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 379
    new-instance v1, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    .line 380
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v1, v3, v5, v2}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 379
    invoke-static {v1}, Lcom/alibaba/fastjson/TypeReference;->intern(Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;)Ljava/lang/reflect/Type;

    move-result-object v1

    aput-object v1, p0, v0

    goto :goto_47

    .line 384
    :cond_35
    instance-of v3, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_48

    .line 385
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 386
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    aput-object v1, p0, v0

    :goto_47
    const/4 v1, 0x1

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_4b
    return v1

    :cond_4c
    :goto_4c
    return v0
.end method

.method private static getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p2, :cond_50

    .line 396
    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_50

    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 401
    :goto_9
    array-length v3, p0

    if-ge v1, v3, :cond_4f

    .line 402
    aget-object v3, p0, v1

    .line 403
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    const/4 v5, 0x1

    if-eqz v4, :cond_34

    .line 404
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 405
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 406
    invoke-static {v4, p1, p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 408
    new-instance v2, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    .line 409
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v4, v6, v3}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 408
    invoke-static {v2}, Lcom/alibaba/fastjson/TypeReference;->intern(Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;)Ljava/lang/reflect/Type;

    move-result-object v2

    aput-object v2, p0, v1

    const/4 v2, 0x1

    goto :goto_4c

    .line 413
    :cond_34
    instance-of v4, v3, Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_4c

    const/4 v4, 0x0

    .line 414
    :goto_39
    array-length v6, p1

    if-ge v4, v6, :cond_4c

    .line 415
    aget-object v6, p1, v4

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 416
    aget-object v2, p2, v4

    aput-object v2, p0, v1

    const/4 v2, 0x1

    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_4c
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_4f
    return v2

    :cond_50
    :goto_50
    return v0
.end method

.method public static getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 293
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public static getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    if-eqz p0, :cond_b7

    if-nez p1, :cond_6

    goto/16 :goto_b7

    .line 301
    :cond_6
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 302
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 303
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 304
    invoke-static {p0, p1, v0, p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    if-eq v0, p0, :cond_25

    .line 306
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_25
    return-object p2

    .line 313
    :cond_26
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_2d

    return-object p2

    .line 317
    :cond_2d
    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_5f

    .line 318
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 319
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 320
    move-object v3, p2

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    .line 322
    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    .line 323
    :goto_42
    array-length v4, v2

    if-ge v1, v4, :cond_5f

    .line 324
    aget-object v4, v2, v1

    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 325
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v1

    return-object p0

    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 331
    :cond_5f
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_b7

    .line 332
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 334
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 338
    invoke-static {v1, p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getArgument([Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result p3

    if-nez p3, :cond_a3

    .line 341
    instance-of p3, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p3, :cond_7b

    .line 342
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 343
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    goto :goto_9b

    .line 344
    :cond_7b
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p3

    instance-of p3, p3, Ljava/lang/reflect/ParameterizedType;

    if-eqz p3, :cond_92

    .line 345
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 346
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    goto :goto_9b

    .line 349
    :cond_92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    move-object p1, v0

    .line 352
    :goto_9b
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    move-result p3

    :cond_a3
    if-eqz p3, :cond_b7

    .line 356
    new-instance p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    .line 357
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 358
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-direct {p0, v1, p1, p2}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 356
    invoke-static {p0}, Lcom/alibaba/fastjson/TypeReference;->intern(Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    :cond_b7
    :goto_b7
    return-object p2
.end method

.method private static getInheritGenericType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 427
    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 430
    instance-of v0, v0, Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 431
    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    goto :goto_11

    :cond_10
    move-object v0, v1

    :goto_11
    if-ne v0, p0, :cond_20

    .line 436
    instance-of p0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p0, :cond_1e

    .line 437
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 438
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_45

    :cond_1e
    move-object p0, v1

    goto :goto_45

    :cond_20
    move-object p1, v1

    :goto_21
    if-eqz p0, :cond_44

    .line 441
    const-class v2, Ljava/lang/Object;

    if-eq p0, v2, :cond_44

    if-eq p0, v0, :cond_44

    .line 442
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 444
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_3f

    .line 445
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 446
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 447
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    move-object p1, v2

    .line 441
    :cond_3f
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_21

    :cond_44
    move-object p0, p1

    :goto_45
    if-eqz p0, :cond_60

    if-nez v0, :cond_4a

    goto :goto_60

    .line 458
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    const/4 v0, 0x0

    .line 459
    :goto_4f
    array-length v2, p1

    if-ge v0, v2, :cond_60

    .line 460
    aget-object v2, p1, v0

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 461
    aget-object v1, p0, v0

    goto :goto_60

    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    :cond_60
    :goto_60
    return-object v1
.end method

.method private nameHashCode64(Ljava/lang/String;Lcom/alibaba/fastjson/annotation/JSONField;)J
    .registers 3

    if-eqz p2, :cond_11

    .line 258
    invoke-interface {p2}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_11

    .line 259
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_lower(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1

    .line 261
    :cond_11
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64_extract(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I
    .registers 8

    .line 495
    iget-object v0, p1, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    iget-object v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2a

    .line 496
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p1, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 497
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    return v1

    .line 501
    :cond_2a
    iget v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iget v2, p1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    const/4 v3, -0x1

    if-ge v0, v2, :cond_32

    return v3

    :cond_32
    if-le v0, v2, :cond_35

    return v1

    .line 509
    :cond_35
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_40

    return v0

    .line 515
    :cond_40
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getDeclaredClass()Ljava/lang/Class;

    move-result-object v0

    .line 516
    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getDeclaredClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v0, :cond_5c

    if-eqz v2, :cond_5c

    if-eq v0, v2, :cond_5c

    .line 519
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_55

    return v3

    .line 523
    :cond_55
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5c

    return v1

    .line 527
    :cond_5c
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-ne v0, v4, :cond_6b

    const/4 v0, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v0, 0x0

    .line 528
    :goto_6c
    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_79

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-ne v4, v5, :cond_79

    const/4 v2, 0x1

    :cond_79
    if-eqz v0, :cond_7e

    if-nez v2, :cond_7e

    return v1

    :cond_7e
    if-eqz v2, :cond_83

    if-nez v0, :cond_83

    return v3

    .line 538
    :cond_83
    iget-object v0, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_94

    return v1

    .line 542
    :cond_94
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_a5

    iget-object v0, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_a5

    return v3

    .line 546
    :cond_a5
    iget-object v0, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "java."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c0

    return v1

    .line 550
    :cond_c0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d9

    return v3

    .line 554
    :cond_d9
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 20
    check-cast p1, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result p1

    return p1
.end method

.method protected genFieldNameChars()[C
    .registers 7

    .line 265
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x3

    .line 266
    new-array v1, v1, [C

    .line 267
    iget-object v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v3, v1, v5}, Ljava/lang/String;->getChars(II[CI)V

    const/16 v2, 0x22

    .line 268
    aput-char v2, v1, v4

    add-int/lit8 v3, v0, 0x1

    .line 269
    aput-char v2, v1, v3

    add-int/lit8 v0, v0, 0x2

    const/16 v2, 0x3a

    .line 270
    aput-char v2, v1, v0

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 571
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_12

    :cond_c
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 572
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_12
    return-object p1
.end method

.method public getAnnation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 276
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-ne p1, v0, :cond_9

    .line 277
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 v0, 0x0

    .line 281
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_12

    .line 282
    invoke-static {v1, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    :cond_12
    if-nez v0, :cond_1c

    .line 285
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1c

    .line 286
    invoke-static {v1, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    :cond_1c
    return-object v0
.end method

.method public getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;
    .registers 2

    .line 558
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_5

    return-object v0

    .line 562
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    return-object v0
.end method

.method protected getDeclaredClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9

    .line 483
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 486
    :cond_9
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_12

    .line 487
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .line 566
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .registers 2

    .line 474
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    return-object v0

    .line 477
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 577
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 581
    :cond_e
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setAccessible()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_8

    .line 586
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    return-void

    .line 590
    :cond_8
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 470
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    return-object v0
.end method
