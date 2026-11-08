.class public Lcom/alibaba/fastjson/util/TypeUtils;
.super Ljava/lang/Object;


# static fields
.field private static final NUMBER_WITH_TRAILING_ZEROS_PATTERN:Ljava/util/regex/Pattern;

.field private static volatile classXmlAccessorType_error:Z

.field private static volatile class_Clob:Ljava/lang/Class;

.field private static volatile class_Clob_error:Z

.field private static class_JacksonCreator:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static class_JacksonCreator_error:Z

.field private static class_ManyToMany:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static class_ManyToMany_error:Z

.field private static class_OneToMany:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static class_OneToMany_error:Z

.field private static volatile class_XmlAccessType:Ljava/lang/Class;

.field private static volatile class_XmlAccessorType:Ljava/lang/Class;

.field private static class_deque:Ljava/lang/Class;

.field public static compatibleWithFieldName:Z

.field public static compatibleWithJavaBean:Z

.field private static volatile field_XmlAccessType_FIELD:Ljava/lang/reflect/Field;

.field private static volatile field_XmlAccessType_FIELD_VALUE:Ljava/lang/Object;

.field private static volatile kotlinIgnores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile kotlinIgnores_error:Z

.field private static volatile kotlin_class_klass_error:Z

.field private static volatile kotlin_error:Z

.field private static volatile kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

.field private static volatile kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

.field private static volatile kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

.field private static volatile kotlin_kparameter_getName:Ljava/lang/reflect/Method;

.field private static volatile kotlin_metadata:Ljava/lang/Class;

.field private static volatile kotlin_metadata_error:Z

.field private static mappings:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static method_HibernateIsInitialized:Ljava/lang/reflect/Method;

.field private static method_HibernateIsInitialized_error:Z

.field private static volatile method_XmlAccessorType_value:Ljava/lang/reflect/Method;

.field private static optionalClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static optionalClassInited:Z

.field private static oracleDateMethod:Ljava/lang/reflect/Method;

.field private static oracleDateMethodInited:Z

.field private static oracleTimestampMethod:Ljava/lang/reflect/Method;

.field private static oracleTimestampMethodInited:Z

.field private static pathClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static pathClass_error:Z

.field private static setAccessibleEnable:Z

.field private static transientClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static transientClassInited:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-string v0, "true"

    const-string v1, "\\.0*$"

    .line 54
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->NUMBER_WITH_TRAILING_ZEROS_PATTERN:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    .line 56
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    .line 58
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z

    const/4 v2, 0x1

    .line 59
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    .line 60
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    .line 62
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    .line 64
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    .line 66
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    const/4 v3, 0x0

    .line 69
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    .line 70
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany_error:Z

    .line 71
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    .line 72
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany_error:Z

    .line 74
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;

    .line 75
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized_error:Z

    .line 86
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v5, 0x100

    const/high16 v6, 0x3f400000    # 0.75f

    invoke-direct {v4, v5, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    .line 88
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    .line 90
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_JacksonCreator:Ljava/lang/Class;

    .line 91
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_JacksonCreator_error:Z

    .line 93
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_Clob:Ljava/lang/Class;

    .line 94
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_Clob_error:Z

    .line 96
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessType:Ljava/lang/Class;

    .line 97
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    .line 98
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    .line 99
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->method_XmlAccessorType_value:Ljava/lang/reflect/Method;

    .line 100
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->field_XmlAccessType_FIELD:Ljava/lang/reflect/Field;

    .line 101
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->field_XmlAccessType_FIELD_VALUE:Ljava/lang/Object;

    .line 103
    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->class_deque:Ljava/lang/Class;

    :try_start_4a
    const-string v1, "fastjson.compatibleWithJavaBean"

    .line 107
    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    const-string v1, "fastjson.compatibleWithFieldName"

    .line 108
    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z
    :try_end_62
    .catchall {:try_start_4a .. :try_end_62} :catchall_62

    :catchall_62
    :try_start_62
    const-string v0, "java.util.Deque"

    .line 114
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_deque:Ljava/lang/Class;
    :try_end_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_6a

    .line 121
    :catchall_6a
    invoke-static {}, Lcom/alibaba/fastjson/util/TypeUtils;->addBaseClassMappings()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBaseClassMappings()V
    .registers 11

    .line 1556
    const-class v0, [C

    const-class v1, [Z

    const-class v2, [D

    const-class v3, [F

    const-class v4, [J

    const-class v5, [I

    const-class v6, [S

    const-class v7, [B

    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v10, "byte"

    invoke-interface {v8, v10, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1557
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v10, "short"

    invoke-interface {v8, v10, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v10, "int"

    invoke-interface {v8, v10, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v10, "long"

    invoke-interface {v8, v10, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1560
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v10, "float"

    invoke-interface {v8, v10, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v10, "double"

    invoke-interface {v8, v10, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v10, "boolean"

    invoke-interface {v8, v10, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v10, "char"

    invoke-interface {v8, v10, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v9, "[byte"

    invoke-interface {v8, v9, v7}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v9, "[short"

    invoke-interface {v8, v9, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v9, "[int"

    invoke-interface {v8, v9, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v9, "[long"

    invoke-interface {v8, v9, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v9, "[float"

    invoke-interface {v8, v9, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v9, "[double"

    invoke-interface {v8, v9, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v9, "[boolean"

    invoke-interface {v8, v9, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v9, "[char"

    invoke-interface {v8, v9, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v9, "[B"

    invoke-interface {v8, v9, v7}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    sget-object v7, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v8, "[S"

    invoke-interface {v7, v8, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    sget-object v6, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v7, "[I"

    invoke-interface {v6, v7, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v6, "[J"

    invoke-interface {v5, v6, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    sget-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v5, "[F"

    invoke-interface {v4, v5, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    sget-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v4, "[D"

    invoke-interface {v3, v4, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v3, "[C"

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v2, "[Z"

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x47

    new-array v1, v0, [Ljava/lang/Class;

    .line 1580
    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Cloneable;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "java.lang.AutoCloseable"

    .line 1583
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    const-class v4, Ljava/lang/Exception;

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-class v4, Ljava/lang/RuntimeException;

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-class v4, Ljava/lang/IllegalAccessError;

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-class v4, Ljava/lang/IllegalAccessException;

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-class v4, Ljava/lang/IllegalArgumentException;

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-class v4, Ljava/lang/IllegalMonitorStateException;

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-class v4, Ljava/lang/IllegalStateException;

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-class v4, Ljava/lang/IllegalThreadStateException;

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-class v4, Ljava/lang/IndexOutOfBoundsException;

    aput-object v4, v1, v2

    const/16 v2, 0xc

    const-class v4, Ljava/lang/InstantiationError;

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-class v4, Ljava/lang/InstantiationException;

    aput-object v4, v1, v2

    const/16 v2, 0xe

    const-class v4, Ljava/lang/InternalError;

    aput-object v4, v1, v2

    const/16 v2, 0xf

    const-class v4, Ljava/lang/InterruptedException;

    aput-object v4, v1, v2

    const/16 v2, 0x10

    const-class v4, Ljava/lang/LinkageError;

    aput-object v4, v1, v2

    const/16 v2, 0x11

    const-class v4, Ljava/lang/NegativeArraySizeException;

    aput-object v4, v1, v2

    const/16 v2, 0x12

    const-class v4, Ljava/lang/NoClassDefFoundError;

    aput-object v4, v1, v2

    const/16 v2, 0x13

    const-class v4, Ljava/lang/NoSuchFieldError;

    aput-object v4, v1, v2

    const/16 v2, 0x14

    const-class v4, Ljava/lang/NoSuchFieldException;

    aput-object v4, v1, v2

    const/16 v2, 0x15

    const-class v4, Ljava/lang/NoSuchMethodError;

    aput-object v4, v1, v2

    const/16 v2, 0x16

    const-class v4, Ljava/lang/NoSuchMethodException;

    aput-object v4, v1, v2

    const/16 v2, 0x17

    const-class v4, Ljava/lang/NullPointerException;

    aput-object v4, v1, v2

    const/16 v2, 0x18

    const-class v4, Ljava/lang/NumberFormatException;

    aput-object v4, v1, v2

    const/16 v2, 0x19

    const-class v4, Ljava/lang/OutOfMemoryError;

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    const-class v4, Ljava/lang/SecurityException;

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    const-class v4, Ljava/lang/StackOverflowError;

    aput-object v4, v1, v2

    const/16 v2, 0x1c

    const-class v4, Ljava/lang/StringIndexOutOfBoundsException;

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    const-class v4, Ljava/lang/TypeNotPresentException;

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    const-class v4, Ljava/lang/VerifyError;

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    const-class v4, Ljava/lang/StackTraceElement;

    aput-object v4, v1, v2

    const/16 v2, 0x20

    const-class v4, Ljava/util/HashMap;

    aput-object v4, v1, v2

    const/16 v2, 0x21

    const-class v4, Ljava/util/Hashtable;

    aput-object v4, v1, v2

    const/16 v2, 0x22

    const-class v4, Ljava/util/TreeMap;

    aput-object v4, v1, v2

    const/16 v2, 0x23

    const-class v4, Ljava/util/IdentityHashMap;

    aput-object v4, v1, v2

    const/16 v2, 0x24

    const-class v4, Ljava/util/WeakHashMap;

    aput-object v4, v1, v2

    const/16 v2, 0x25

    const-class v4, Ljava/util/LinkedHashMap;

    aput-object v4, v1, v2

    const/16 v2, 0x26

    const-class v4, Ljava/util/HashSet;

    aput-object v4, v1, v2

    const/16 v2, 0x27

    const-class v4, Ljava/util/LinkedHashSet;

    aput-object v4, v1, v2

    const/16 v2, 0x28

    const-class v4, Ljava/util/TreeSet;

    aput-object v4, v1, v2

    const/16 v2, 0x29

    const-class v4, Ljava/util/ArrayList;

    aput-object v4, v1, v2

    const/16 v2, 0x2a

    const-class v4, Ljava/util/concurrent/TimeUnit;

    aput-object v4, v1, v2

    const/16 v2, 0x2b

    const-class v4, Ljava/util/concurrent/ConcurrentHashMap;

    aput-object v4, v1, v2

    const/16 v2, 0x2c

    const-class v4, Ljava/util/concurrent/atomic/AtomicInteger;

    aput-object v4, v1, v2

    const/16 v2, 0x2d

    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v4, v1, v2

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 1627
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/16 v4, 0x2e

    aput-object v2, v1, v4

    const/16 v2, 0x2f

    const-class v4, Ljava/lang/Boolean;

    aput-object v4, v1, v2

    const/16 v2, 0x30

    const-class v4, Ljava/lang/Character;

    aput-object v4, v1, v2

    const/16 v2, 0x31

    const-class v4, Ljava/lang/Byte;

    aput-object v4, v1, v2

    const/16 v2, 0x32

    const-class v4, Ljava/lang/Short;

    aput-object v4, v1, v2

    const/16 v2, 0x33

    const-class v4, Ljava/lang/Integer;

    aput-object v4, v1, v2

    const/16 v2, 0x34

    const-class v4, Ljava/lang/Long;

    aput-object v4, v1, v2

    const/16 v2, 0x35

    const-class v4, Ljava/lang/Float;

    aput-object v4, v1, v2

    const/16 v2, 0x36

    const-class v4, Ljava/lang/Double;

    aput-object v4, v1, v2

    const/16 v2, 0x37

    const-class v4, Ljava/lang/Number;

    aput-object v4, v1, v2

    const/16 v2, 0x38

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v2

    const/16 v2, 0x39

    const-class v4, Ljava/math/BigDecimal;

    aput-object v4, v1, v2

    const/16 v2, 0x3a

    const-class v4, Ljava/math/BigInteger;

    aput-object v4, v1, v2

    const/16 v2, 0x3b

    const-class v4, Ljava/util/BitSet;

    aput-object v4, v1, v2

    const/16 v2, 0x3c

    const-class v4, Ljava/util/Calendar;

    aput-object v4, v1, v2

    const/16 v2, 0x3d

    const-class v4, Ljava/util/Date;

    aput-object v4, v1, v2

    const/16 v2, 0x3e

    const-class v4, Ljava/util/Locale;

    aput-object v4, v1, v2

    const/16 v2, 0x3f

    const-class v4, Ljava/util/UUID;

    aput-object v4, v1, v2

    const/16 v2, 0x40

    const-class v4, Ljava/sql/Time;

    aput-object v4, v1, v2

    const/16 v2, 0x41

    const-class v4, Ljava/sql/Date;

    aput-object v4, v1, v2

    const/16 v2, 0x42

    const-class v4, Ljava/sql/Timestamp;

    aput-object v4, v1, v2

    const/16 v2, 0x43

    const-class v4, Ljava/text/SimpleDateFormat;

    aput-object v4, v1, v2

    const/16 v2, 0x44

    const-class v4, Lcom/alibaba/fastjson/JSONObject;

    aput-object v4, v1, v2

    const/16 v2, 0x45

    const-class v4, Lcom/alibaba/fastjson/JSONPObject;

    aput-object v4, v1, v2

    const/16 v2, 0x46

    const-class v4, Lcom/alibaba/fastjson/JSONArray;

    aput-object v4, v1, v2

    :goto_276
    if-ge v3, v0, :cond_289

    .line 1653
    aget-object v2, v1, v3

    if-nez v2, :cond_27d

    goto :goto_286

    .line 1657
    :cond_27d
    sget-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_286
    add-int/lit8 v3, v3, 0x1

    goto :goto_276

    :cond_289
    return-void
.end method

.method public static addMapping(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1667
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1759
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Z)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object p0

    return-object p0
.end method

.method public static buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Z)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "Z)",
            "Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1767
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v6, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz v8, :cond_8b

    .line 1772
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v2

    .line 1774
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v3

    .line 1775
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_20

    move-object v3, v1

    .line 1779
    :cond_20
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONType;->naming()Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v4

    .line 1780
    sget-object v5, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    if-eq v4, v5, :cond_29

    goto :goto_2b

    :cond_29
    move-object/from16 v4, p2

    .line 1784
    :goto_2b
    invoke-interface {v8}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v5

    .line 1785
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    move-object v10, v1

    :goto_38
    if-eqz v9, :cond_59

    .line 1786
    const-class v11, Ljava/lang/Object;

    if-eq v9, v11, :cond_59

    .line 1788
    const-class v11, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v9, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez v11, :cond_49

    goto :goto_59

    .line 1792
    :cond_49
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v10

    .line 1793
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_54

    goto :goto_59

    .line 1787
    :cond_54
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    goto :goto_38

    .line 1798
    :cond_59
    :goto_59
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v9

    array-length v11, v9

    const/4 v12, 0x0

    :goto_5f
    if-ge v12, v11, :cond_7b

    aget-object v13, v9, v12

    .line 1799
    const-class v14, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {v13, v14}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v13

    check-cast v13, Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v13, :cond_78

    .line 1801
    invoke-interface {v13}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v10

    .line 1802
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_78

    goto :goto_7b

    :cond_78
    add-int/lit8 v12, v12, 0x1

    goto :goto_5f

    :cond_7b
    :goto_7b
    if-eqz v10, :cond_84

    .line 1808
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_84

    goto :goto_85

    :cond_84
    move-object v1, v10

    :goto_85
    move-object v11, v1

    move-object v9, v2

    move-object v10, v3

    move-object v12, v4

    move v13, v5

    goto :goto_91

    :cond_8b
    move-object/from16 v12, p2

    move-object v9, v1

    move-object v10, v9

    move-object v11, v10

    const/4 v13, 0x0

    .line 1815
    :goto_91
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1816
    invoke-static {v6, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V

    if-eqz p3, :cond_a0

    .line 1818
    invoke-static {v6, v7, v0, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGettersWithFieldBase(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    goto :goto_ac

    :cond_a0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p1

    move-object v3, v14

    move-object v5, v12

    .line 1819
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    .line 1820
    :goto_ac
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v15, v1, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1821
    invoke-interface {v0, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-eqz v9, :cond_cf

    .line 1824
    array-length v1, v9

    if-eqz v1, :cond_cf

    if-eqz p3, :cond_c2

    const/4 v0, 0x1

    .line 1826
    invoke-static {v6, v7, v0, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGettersWithFieldBase(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    goto :goto_d8

    :cond_c2
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p1

    move-object v3, v14

    move-object v5, v12

    .line 1827
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v0

    goto :goto_d8

    .line 1829
    :cond_cf
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1830
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object v0, v1

    .line 1832
    :goto_d8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1833
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1834
    invoke-static {v1, v15}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    move-object v7, v15

    goto :goto_ea

    :cond_e9
    move-object v7, v1

    .line 1837
    :goto_ea
    new-instance v9, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v10

    move-object v4, v11

    move v5, v13

    move-object v6, v15

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/lang/String;Ljava/lang/String;I[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)V

    return-object v9
.end method

.method public static byteValue(Ljava/math/BigDecimal;)B
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 905
    :cond_4
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    const/16 v1, -0x64

    if-lt v0, v1, :cond_15

    const/16 v1, 0x64

    if-gt v0, v1, :cond_15

    .line 907
    invoke-virtual {p0}, Ljava/math/BigDecimal;->byteValue()B

    move-result p0

    return p0

    .line 910
    :cond_15
    invoke-virtual {p0}, Ljava/math/BigDecimal;->byteValueExact()B

    move-result p0

    return p0
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_47

    .line 1064
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_d

    .line 1065
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1066
    :cond_d
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_18

    const-wide/16 p0, 0x0

    .line 1067
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 1068
    :cond_18
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_21

    .line 1069
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 1070
    :cond_21
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_2a

    .line 1071
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 1072
    :cond_2a
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_34

    const/4 p0, 0x0

    .line 1073
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 1074
    :cond_34
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_3f

    const-wide/16 p0, 0x0

    .line 1075
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 1076
    :cond_3f
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_46

    .line 1077
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_46
    return-object v0

    :cond_47
    if-eqz p1, :cond_245

    .line 1086
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne p1, v2, :cond_50

    return-object p0

    .line 1090
    :cond_50
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_6e

    .line 1091
    const-class v0, Ljava/util/Map;

    if-ne p1, v0, :cond_59

    return-object p0

    .line 1095
    :cond_59
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 1096
    const-class v1, Ljava/lang/Object;

    if-ne p1, v1, :cond_69

    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    return-object p0

    .line 1099
    :cond_69
    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1102
    :cond_6e
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 1103
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_a3

    .line 1104
    check-cast p0, Ljava/util/Collection;

    .line 1106
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 1107
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1108
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v2

    .line 1109
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    :cond_a2
    return-object v0

    .line 1114
    :cond_a3
    const-class v1, [B

    if-ne p1, v1, :cond_ac

    .line 1115
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBytes(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0

    .line 1119
    :cond_ac
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b7

    return-object p0

    .line 1123
    :cond_b7
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_240

    const-class v1, Ljava/lang/Boolean;

    if-ne p1, v1, :cond_c1

    goto/16 :goto_240

    .line 1127
    :cond_c1
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_23b

    const-class v1, Ljava/lang/Byte;

    if-ne p1, v1, :cond_cb

    goto/16 :goto_23b

    .line 1131
    :cond_cb
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_236

    const-class v1, Ljava/lang/Character;

    if-ne p1, v1, :cond_d5

    goto/16 :goto_236

    .line 1135
    :cond_d5
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_231

    const-class v1, Ljava/lang/Short;

    if-ne p1, v1, :cond_df

    goto/16 :goto_231

    .line 1139
    :cond_df
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_22c

    const-class v1, Ljava/lang/Integer;

    if-ne p1, v1, :cond_e9

    goto/16 :goto_22c

    .line 1143
    :cond_e9
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_227

    const-class v1, Ljava/lang/Long;

    if-ne p1, v1, :cond_f3

    goto/16 :goto_227

    .line 1147
    :cond_f3
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_222

    const-class v1, Ljava/lang/Float;

    if-ne p1, v1, :cond_fd

    goto/16 :goto_222

    .line 1151
    :cond_fd
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_21d

    const-class v1, Ljava/lang/Double;

    if-ne p1, v1, :cond_107

    goto/16 :goto_21d

    .line 1155
    :cond_107
    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_110

    .line 1156
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1159
    :cond_110
    const-class v1, Ljava/math/BigDecimal;

    if-ne p1, v1, :cond_119

    .line 1160
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 1163
    :cond_119
    const-class v1, Ljava/math/BigInteger;

    if-ne p1, v1, :cond_122

    .line 1164
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 1167
    :cond_122
    const-class v1, Ljava/util/Date;

    if-ne p1, v1, :cond_12b

    .line 1168
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 1171
    :cond_12b
    const-class v1, Ljava/sql/Date;

    if-ne p1, v1, :cond_134

    .line 1172
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;

    move-result-object p0

    return-object p0

    .line 1175
    :cond_134
    const-class v1, Ljava/sql/Time;

    if-ne p1, v1, :cond_13d

    .line 1176
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlTime(Ljava/lang/Object;)Ljava/sql/Time;

    move-result-object p0

    return-object p0

    .line 1179
    :cond_13d
    const-class v1, Ljava/sql/Timestamp;

    if-ne p1, v1, :cond_146

    .line 1180
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;

    move-result-object p0

    return-object p0

    .line 1183
    :cond_146
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_151

    .line 1184
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1187
    :cond_151
    const-class v1, Ljava/util/Calendar;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, "can not cast to : "

    if-eqz v1, :cond_191

    .line 1188
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    .line 1190
    const-class p2, Ljava/util/Calendar;

    if-ne p1, p2, :cond_16c

    .line 1191
    sget-object p1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    sget-object p2, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    goto :goto_173

    .line 1194
    :cond_16c
    :try_start_16c
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Calendar;
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_172} :catch_177

    move-object p1, p2

    .line 1199
    :goto_173
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object p1

    :catch_177
    move-exception p0

    .line 1196
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 1203
    :cond_191
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "javax.xml.datatype.XMLGregorianCalendar"

    .line 1204
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b3

    .line 1205
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    .line 1206
    sget-object p1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    sget-object p2, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 1207
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1208
    sget-object p0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/CalendarCodec;->createXMLGregorianCalendar(Ljava/util/Calendar;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p0

    return-object p0

    .line 1211
    :cond_1b3
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_1f5

    .line 1212
    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    .line 1213
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1f4

    const-string v4, "null"

    .line 1214
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f4

    const-string v4, "NULL"

    .line 1215
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d1

    goto :goto_1f4

    .line 1219
    :cond_1d1
    const-class v0, Ljava/util/Currency;

    if-ne p1, v0, :cond_1da

    .line 1220
    invoke-static {v3}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0

    return-object p0

    .line 1223
    :cond_1da
    const-class v0, Ljava/util/Locale;

    if-ne p1, v0, :cond_1e3

    .line 1224
    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :cond_1e3
    const-string v0, "java.time."

    .line 1227
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f5

    .line 1228
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1229
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1f4
    :goto_1f4
    return-object v0

    .line 1233
    :cond_1f5
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object p2

    if-eqz p2, :cond_204

    .line 1235
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1236
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1238
    :cond_204
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1152
    :cond_21d
    :goto_21d
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 1148
    :cond_222
    :goto_222
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 1144
    :cond_227
    :goto_227
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 1140
    :cond_22c
    :goto_22c
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1136
    :cond_231
    :goto_231
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 1132
    :cond_236
    :goto_236
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToChar(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 1128
    :cond_23b
    :goto_23b
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 1124
    :cond_240
    :goto_240
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1083
    :cond_245
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "clazz is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_24e

    :goto_24d
    throw p0

    :goto_24e
    goto :goto_24d
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 1322
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1324
    const-class v1, Ljava/util/List;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_58

    .line 1325
    :cond_d
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    .line 1326
    instance-of v3, p0, Ljava/util/List;

    if-eqz v3, :cond_58

    .line 1327
    check-cast p0, Ljava/util/List;

    .line 1328
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 1330
    :goto_23
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_57

    .line 1331
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1334
    instance-of v4, v1, Ljava/lang/Class;

    if-eqz v4, :cond_4d

    if-eqz v3, :cond_45

    .line 1335
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/alibaba/fastjson/JSONObject;

    if-ne v4, v5, :cond_45

    .line 1336
    check-cast v3, Lcom/alibaba/fastjson/JSONObject;

    move-object v4, v1

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v3, v4, p2, v2}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_51

    .line 1338
    :cond_45
    move-object v4, v1

    check-cast v4, Ljava/lang/Class;

    invoke-static {v3, v4, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_51

    .line 1341
    :cond_4d
    invoke-static {v3, v1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v3

    .line 1344
    :goto_51
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_57
    return-object p1

    .line 1350
    :cond_58
    const-class v1, Ljava/util/Set;

    if-eq v0, v1, :cond_70

    const-class v1, Ljava/util/HashSet;

    if-eq v0, v1, :cond_70

    const-class v1, Ljava/util/TreeSet;

    if-eq v0, v1, :cond_70

    const-class v1, Ljava/util/Collection;

    if-eq v0, v1, :cond_70

    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_70

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_d1

    .line 1355
    :cond_70
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    .line 1356
    instance-of v3, p0, Ljava/lang/Iterable;

    if-eqz v3, :cond_d1

    .line 1358
    const-class p1, Ljava/util/Set;

    if-eq v0, p1, :cond_93

    const-class p1, Ljava/util/HashSet;

    if-ne v0, p1, :cond_83

    goto :goto_93

    .line 1360
    :cond_83
    const-class p1, Ljava/util/TreeSet;

    if-ne v0, p1, :cond_8d

    .line 1361
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    goto :goto_98

    .line 1363
    :cond_8d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_98

    .line 1359
    :cond_93
    :goto_93
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 1365
    :goto_98
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 1366
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1369
    instance-of v3, v1, Ljava/lang/Class;

    if-eqz v3, :cond_c8

    if-eqz v0, :cond_c0

    .line 1370
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/alibaba/fastjson/JSONObject;

    if-ne v3, v4, :cond_c0

    .line 1371
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    move-object v3, v1

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v0, v3, p2, v2}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_cc

    .line 1373
    :cond_c0
    move-object v3, v1

    check-cast v3, Ljava/lang/Class;

    invoke-static {v0, v3, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_cc

    .line 1376
    :cond_c8
    invoke-static {v0, v1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    .line 1379
    :goto_cc
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9e

    :cond_d0
    return-object p1

    .line 1385
    :cond_d1
    const-class v1, Ljava/util/Map;

    const/4 v3, 0x1

    if-eq v0, v1, :cond_da

    const-class v1, Ljava/util/HashMap;

    if-ne v0, v1, :cond_11a

    .line 1386
    :cond_da
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    .line 1387
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v3

    .line 1388
    instance-of v5, p0, Ljava/util/Map;

    if-eqz v5, :cond_11a

    .line 1389
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1390
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_119

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1391
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v2

    .line 1392
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    .line 1393
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f9

    :cond_119
    return-object p1

    .line 1398
    :cond_11a
    instance-of v1, p0, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v1, :cond_129

    .line 1399
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 1400
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_129

    return-object v4

    .line 1405
    :cond_129
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1406
    array-length v5, v1

    if-ne v5, v3, :cond_13f

    .line 1407
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    aget-object v2, v5, v2

    .line 1408
    instance-of v2, v2, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_13f

    .line 1409
    invoke-static {p0, v0, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1413
    :cond_13f
    const-class v2, Ljava/util/Map$Entry;

    if-ne v0, v2, :cond_174

    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_174

    move-object v2, p0

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    if-ne v5, v3, :cond_174

    .line 1414
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 1415
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 1416
    array-length v0, v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_173

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_173

    .line 1417
    aget-object v0, v1, v3

    .line 1419
    invoke-static {p1, v0, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p1

    .line 1418
    invoke-interface {p0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_173
    return-object p0

    .line 1425
    :cond_174
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_190

    if-nez p2, :cond_17c

    .line 1427
    sget-object p2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 1429
    :cond_17c
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    if-eqz v0, :cond_190

    .line 1431
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1432
    new-instance v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 1433
    invoke-interface {v0, v1, p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1437
    :cond_190
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can not cast to : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_1a8

    :goto_1a7
    throw p0

    :goto_1a8
    goto :goto_1a7
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1300
    :cond_4
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_f

    .line 1301
    check-cast p1, Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1303
    :cond_f
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1a

    .line 1304
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1306
    :cond_1a
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_38

    .line 1307
    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    .line 1308
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "null"

    .line 1309
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "NULL"

    .line 1310
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_38

    :cond_37
    return-object v0

    .line 1314
    :cond_38
    instance-of p2, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz p2, :cond_3d

    return-object p0

    .line 1317
    :cond_3d
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can not cast to : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 324
    :cond_4
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_20

    .line 325
    move-object v1, p0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_5d

    :cond_1f
    return-object v0

    .line 328
    :cond_20
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_3c

    .line 329
    move-object v1, p0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_5d

    :cond_3b
    return-object v0

    .line 332
    :cond_3c
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_43

    .line 333
    check-cast p0, Ljava/math/BigDecimal;

    return-object p0

    .line 334
    :cond_43
    instance-of v1, p0, Ljava/math/BigInteger;

    if-eqz v1, :cond_4f

    .line 335
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 336
    :cond_4f
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_5d

    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_5d

    return-object v0

    .line 340
    :cond_5d
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 342
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_87

    const-string v1, "null"

    .line 343
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    goto :goto_87

    .line 347
    :cond_70
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_7f

    .line 350
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 348
    :cond_7f
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "decimal overflow"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_87
    :goto_87
    return-object v0
.end method

.method public static castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 358
    :cond_4
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_29

    .line 359
    check-cast p0, Ljava/lang/Float;

    .line 360
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_28

    .line 363
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Float;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_28
    :goto_28
    return-object v0

    .line 364
    :cond_29
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_4e

    .line 365
    check-cast p0, Ljava/lang/Double;

    .line 366
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_44

    goto :goto_4d

    .line 369
    :cond_44
    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_4d
    :goto_4d
    return-object v0

    .line 370
    :cond_4e
    instance-of v1, p0, Ljava/math/BigInteger;

    if-eqz v1, :cond_55

    .line 371
    check-cast p0, Ljava/math/BigInteger;

    return-object p0

    .line 372
    :cond_55
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_6d

    .line 373
    move-object v1, p0

    check-cast v1, Ljava/math/BigDecimal;

    .line 374
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    const/16 v3, -0x3e8

    if-le v2, v3, :cond_6d

    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_6d

    .line 376
    invoke-virtual {v1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 380
    :cond_6d
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 382
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_97

    const-string v1, "null"

    .line 383
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    goto :goto_97

    .line 387
    :cond_80
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_8f

    .line 390
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 388
    :cond_8f
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "decimal overflow"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_97
    :goto_97
    return-object v0
.end method

.method public static castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1018
    :cond_4
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 1019
    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 1022
    :cond_b
    instance-of v1, p0, Ljava/math/BigDecimal;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1f

    .line 1023
    check-cast p0, Ljava/math/BigDecimal;

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->intValue(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v3, :cond_1a

    const/4 v2, 0x1

    :cond_1a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1026
    :cond_1f
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_31

    .line 1027
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-ne p0, v3, :cond_2c

    const/4 v2, 0x1

    :cond_2c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1030
    :cond_31
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_9f

    .line 1031
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 1032
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9e

    const-string v2, "null"

    .line 1033
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9e

    const-string v2, "NULL"

    .line 1034
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    goto :goto_9e

    :cond_4f
    const-string v0, "true"

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9b

    const-string v0, "1"

    .line 1038
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_9b

    :cond_60
    const-string v0, "false"

    .line 1041
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_98

    const-string v0, "0"

    .line 1042
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    goto :goto_98

    :cond_71
    const-string v0, "Y"

    .line 1045
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_95

    const-string v0, "T"

    .line 1046
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    goto :goto_95

    :cond_82
    const-string v0, "F"

    .line 1049
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_92

    const-string v0, "N"

    .line 1050
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 1051
    :cond_92
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 1047
    :cond_95
    :goto_95
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 1043
    :cond_98
    :goto_98
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 1039
    :cond_9b
    :goto_9b
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_9e
    :goto_9e
    return-object v0

    .line 1054
    :cond_9f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to boolean, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToByte(Ljava/lang/Object;)Ljava/lang/Byte;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 244
    :cond_4
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_13

    .line 245
    check-cast p0, Ljava/math/BigDecimal;

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->byteValue(Ljava/math/BigDecimal;)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 248
    :cond_13
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_22

    .line 249
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 252
    :cond_22
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_49

    .line 253
    check-cast p0, Ljava/lang/String;

    .line 254
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_48

    const-string v1, "null"

    .line 255
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "NULL"

    .line 256
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_48

    .line 259
    :cond_3f
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_48
    :goto_48
    return-object v0

    .line 262
    :cond_49
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_58

    .line 263
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 266
    :cond_58
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to byte, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToBytes(Ljava/lang/Object;)[B
    .registers 4

    .line 1005
    instance-of v0, p0, [B

    if-eqz v0, :cond_9

    .line 1006
    check-cast p0, [B

    check-cast p0, [B

    return-object p0

    .line 1008
    :cond_9
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 1009
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 1011
    :cond_14
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to byte[], value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToChar(Ljava/lang/Object;)Ljava/lang/Character;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 273
    :cond_4
    instance-of v1, p0, Ljava/lang/Character;

    if-eqz v1, :cond_b

    .line 274
    check-cast p0, Ljava/lang/Character;

    return-object p0

    .line 276
    :cond_b
    instance-of v1, p0, Ljava/lang/String;

    const-string v2, "can not cast to char, value : "

    if-eqz v1, :cond_41

    .line 277
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 278
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1b

    return-object v0

    .line 281
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2c

    const/4 p0, 0x0

    .line 284
    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 282
    :cond_2c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_41
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToDate(Ljava/lang/Object;)Ljava/util/Date;
    .registers 2

    const/4 v0, 0x0

    .line 448
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static castToDate(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Date;
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 456
    :cond_4
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_b

    .line 457
    check-cast p0, Ljava/util/Date;

    return-object p0

    .line 460
    :cond_b
    instance-of v1, p0, Ljava/util/Calendar;

    if-eqz v1, :cond_16

    .line 461
    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 466
    :cond_16
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_26

    .line 467
    check-cast p0, Ljava/math/BigDecimal;

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->longValue(Ljava/math/BigDecimal;)J

    move-result-wide p0

    .line 468
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 471
    :cond_26
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_42

    .line 472
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-string p0, "unixtime"

    .line 473
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3c

    const-wide/16 p0, 0x3e8

    mul-long v0, v0, p0

    .line 476
    :cond_3c
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0

    .line 479
    :cond_42
    instance-of v1, p0, Ljava/lang/String;

    const-string v2, "can not cast to Date, value : "

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_128

    .line 480
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 481
    new-instance v6, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v6, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 483
    :try_start_53
    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 484
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object p0

    .line 485
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0
    :try_end_61
    .catchall {:try_start_53 .. :try_end_61} :catchall_123

    .line 488
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    return-object p0

    :cond_65
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    const-string v6, "/Date("

    .line 491
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_83

    const-string v6, ")/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_83

    const/4 v6, 0x6

    .line 492
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_83
    const/16 v6, 0x2d

    .line 495
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gtz v6, :cond_a3

    const/16 v6, 0x2b

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gtz v6, :cond_a3

    if-eqz p1, :cond_96

    goto :goto_a3

    .line 524
    :cond_96
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_9d

    return-object v0

    .line 527
    :cond_9d
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto/16 :goto_129

    :cond_a3
    :goto_a3
    if-nez p1, :cond_fd

    .line 497
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    .line 498
    sget-object p1, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq p0, p1, :cond_fb

    const/16 p1, 0x16

    if-ne p0, p1, :cond_c0

    sget-object p1, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    const-string v0, "yyyyMMddHHmmssSSSZ"

    .line 499
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c0

    goto :goto_fb

    :cond_c0
    const/16 p1, 0xa

    if-ne p0, p1, :cond_c7

    const-string p1, "yyyy-MM-dd"

    goto :goto_fd

    :cond_c7
    const/16 p1, 0x13

    if-ne p0, p1, :cond_ce

    const-string p1, "yyyy-MM-dd HH:mm:ss"

    goto :goto_fd

    :cond_ce
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_e9

    const/16 v0, 0x1a

    .line 506
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x3a

    if-ne v0, v3, :cond_e9

    const/16 v0, 0x1c

    .line 507
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x30

    if-ne v0, v3, :cond_e9

    const-string p1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    goto :goto_fd

    :cond_e9
    const/16 v0, 0x17

    if-ne p0, v0, :cond_f8

    .line 509
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x2c

    if-ne p0, p1, :cond_f8

    const-string p1, "yyyy-MM-dd HH:mm:ss,SSS"

    goto :goto_fd

    :cond_f8
    const-string p1, "yyyy-MM-dd HH:mm:ss.SSS"

    goto :goto_fd

    .line 500
    :cond_fb
    :goto_fb
    sget-object p1, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 516
    :cond_fd
    :goto_fd
    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 517
    sget-object p1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 519
    :try_start_109
    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_10d
    .catch Ljava/text/ParseException; {:try_start_109 .. :try_end_10d} :catch_10e

    return-object p0

    .line 521
    :catch_10e
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_123
    move-exception p0

    .line 488
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 489
    throw p0

    :cond_128
    move-wide v0, v3

    :goto_129
    cmp-long p1, v0, v3

    if-nez p1, :cond_1b7

    .line 531
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 532
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oracle.sql.TIMESTAMP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "toJdbc"

    const/4 v3, 0x1

    if-eqz v0, :cond_16b

    .line 533
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_157

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    if-nez v0, :cond_157

    :try_start_148
    new-array v0, v5, [Ljava/lang/Class;

    .line 535
    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;
    :try_end_150
    .catch Ljava/lang/NoSuchMethodException; {:try_start_148 .. :try_end_150} :catch_155
    .catchall {:try_start_148 .. :try_end_150} :catchall_151

    goto :goto_155

    :catchall_151
    move-exception p0

    .line 539
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    .line 540
    throw p0

    .line 539
    :catch_155
    :goto_155
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    .line 544
    :cond_157
    :try_start_157
    sget-object p1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_15f} :catch_162

    .line 548
    check-cast p0, Ljava/util/Date;

    return-object p0

    :catch_162
    move-exception p0

    .line 546
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "can not cast oracle.sql.TIMESTAMP to Date"

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 550
    :cond_16b
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "oracle.sql.DATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 551
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_18e

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    if-nez v0, :cond_18e

    :try_start_17f
    new-array v0, v5, [Ljava/lang/Class;

    .line 553
    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;
    :try_end_187
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17f .. :try_end_187} :catch_18c
    .catchall {:try_start_17f .. :try_end_187} :catchall_188

    goto :goto_18c

    :catchall_188
    move-exception p0

    .line 557
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    .line 558
    throw p0

    .line 557
    :catch_18c
    :goto_18c
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    .line 562
    :cond_18e
    :try_start_18e
    sget-object p1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_196} :catch_199

    .line 566
    check-cast p0, Ljava/util/Date;

    return-object p0

    :catch_199
    move-exception p0

    .line 564
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "can not cast oracle.sql.DATE to Date"

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 569
    :cond_1a2
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 572
    :cond_1b7
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method

.method public static castToDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 424
    :cond_4
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_13

    .line 425
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 427
    :cond_13
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4d

    .line 428
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 429
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4c

    const-string v1, "null"

    .line 430
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "NULL"

    .line 431
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_4c

    :cond_32
    const/16 v0, 0x2c

    .line 434
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_43

    const-string v0, ","

    const-string v1, ""

    .line 435
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 437
    :cond_43
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_4c
    :goto_4c
    return-object v0

    .line 440
    :cond_4d
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_63

    .line 441
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5c

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_5e

    :cond_5c
    const-wide/16 v0, 0x0

    :goto_5e
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 444
    :cond_63
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to double, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    const-string v0, "can not cast to : "

    .line 1255
    :try_start_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2e

    .line 1256
    check-cast p0, Ljava/lang/String;

    .line 1257
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    const/4 p0, 0x0

    return-object p0

    :cond_10
    if-nez p2, :cond_16

    .line 1262
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object p2

    .line 1265
    :cond_16
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object p2

    .line 1266
    instance-of v1, p2, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    if-eqz v1, :cond_29

    .line 1267
    check-cast p2, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    .line 1268
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object p0

    return-object p0

    .line 1271
    :cond_29
    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0

    .line 1274
    :cond_2e
    instance-of p2, p0, Ljava/math/BigDecimal;

    if-eqz p2, :cond_43

    .line 1275
    move-object p2, p0

    check-cast p2, Ljava/math/BigDecimal;

    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->intValue(Ljava/math/BigDecimal;)I

    move-result p2

    .line 1276
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    .line 1277
    array-length v2, v1

    if-ge p2, v2, :cond_43

    .line 1278
    aget-object p0, v1, p2

    return-object p0

    .line 1282
    :cond_43
    instance-of p2, p0, Ljava/lang/Number;

    if-eqz p2, :cond_57

    .line 1283
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 1284
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p2

    .line 1285
    array-length v1, p2

    if-ge p0, v1, :cond_57

    .line 1286
    aget-object p0, p2, p0
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_56} :catch_70

    return-object p0

    .line 1292
    :cond_57
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_70
    move-exception p0

    .line 1290
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static castToFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 397
    :cond_4
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_13

    .line 398
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 400
    :cond_13
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4d

    .line 401
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 402
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4c

    const-string v1, "null"

    .line 403
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "NULL"

    .line 404
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_4c

    :cond_32
    const/16 v0, 0x2c

    .line 407
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_43

    const-string v0, ","

    const-string v1, ""

    .line 408
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 410
    :cond_43
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_4c
    :goto_4c
    return-object v0

    .line 413
    :cond_4d
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_62

    .line 414
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5c

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_5d

    :cond_5c
    const/4 p0, 0x0

    :goto_5d
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 417
    :cond_62
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to float, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 957
    :cond_4
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_b

    .line 958
    check-cast p0, Ljava/lang/Integer;

    return-object p0

    .line 961
    :cond_b
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1a

    .line 962
    check-cast p0, Ljava/math/BigDecimal;

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->intValue(Ljava/math/BigDecimal;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 965
    :cond_1a
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_29

    .line 966
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 969
    :cond_29
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_71

    .line 970
    check-cast p0, Ljava/lang/String;

    .line 971
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_70

    const-string v1, "null"

    .line 972
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "NULL"

    .line 973
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    goto :goto_70

    :cond_46
    const/16 v0, 0x2c

    .line 976
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, ""

    if-eq v0, v1, :cond_57

    const-string v0, ","

    .line 977
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 980
    :cond_57
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->NUMBER_WITH_TRAILING_ZEROS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 981
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 982
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 984
    :cond_67
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_70
    :goto_70
    return-object v0

    .line 987
    :cond_71
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_80

    .line 988
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 990
    :cond_80
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_b2

    .line 991
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 992
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b2

    const-string v1, "andIncrement"

    .line 993
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    const-string v1, "andDecrement"

    .line 994
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 995
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 996
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 997
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 998
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1001
    :cond_b2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to int, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1058
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 1443
    :try_start_0
    const-class v0, Ljava/lang/StackTraceElement;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3d

    const-string p1, "className"

    .line 1444
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "methodName"

    .line 1445
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "fileName"

    .line 1446
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "lineNumber"

    .line 1449
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    if-nez p0, :cond_28

    goto :goto_37

    .line 1452
    :cond_28
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_33

    .line 1453
    check-cast p0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValueExact()I

    move-result v1

    goto :goto_37

    .line 1455
    :cond_33
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 1458
    :goto_37
    new-instance p0, Ljava/lang/StackTraceElement;

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 1462
    :cond_3d
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1463
    instance-of v2, v0, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_76

    .line 1464
    check-cast v0, Ljava/lang/String;

    if-nez p2, :cond_4e

    .line 1467
    sget-object p2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 1469
    :cond_4e
    invoke-virtual {p2, v0, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_5f

    .line 1473
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 1474
    invoke-static {p0, v2, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1471
    :cond_5f
    new-instance p0, Ljava/lang/ClassNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1479
    :cond_76
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 1481
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_83

    .line 1482
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    goto :goto_89

    .line 1484
    :cond_83
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    :goto_89
    if-nez p2, :cond_8f

    .line 1487
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object p2

    .line 1489
    :cond_8f
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object p2

    if-eqz p2, :cond_9e

    .line 1491
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1492
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1494
    :cond_9e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    aput-object p1, v0, v1

    invoke-static {p2, v0, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1498
    :cond_b0
    const-class v0, Ljava/util/Locale;

    if-ne p1, v0, :cond_da

    const-string v0, "language"

    .line 1499
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "country"

    .line 1500
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1501
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_da

    .line 1502
    check-cast v0, Ljava/lang/String;

    .line 1503
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_d2

    .line 1504
    check-cast v1, Ljava/lang/String;

    .line 1505
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_d2
    if-nez v1, :cond_da

    .line 1507
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1512
    :cond_da
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_e7

    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_e7

    .line 1513
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1516
    :cond_e7
    const-class v0, Lcom/alibaba/fastjson/JSON;

    if-ne p1, v0, :cond_f0

    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_f0

    return-object p0

    .line 1520
    :cond_f0
    const-class v0, Ljava/util/LinkedHashMap;

    if-ne p1, v0, :cond_104

    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_104

    .line 1521
    move-object v0, p0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 1522
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v0

    .line 1523
    instance-of v1, v0, Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_104

    return-object v0

    .line 1528
    :cond_104
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10b

    return-object p0

    .line 1532
    :cond_10b
    const-class v0, Lcom/alibaba/fastjson/JSONObject;

    if-ne p1, v0, :cond_115

    .line 1533
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    return-object p1

    :cond_115
    if-nez p2, :cond_11b

    .line 1537
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object p2

    .line 1541
    :cond_11b
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 1542
    instance-of v1, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v1, :cond_126

    .line 1543
    move-object v3, v0

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    :cond_126
    if-eqz v3, :cond_12d

    .line 1549
    invoke-virtual {v3, p0, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1547
    :cond_12d
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can not get javaBeanDeserializer. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_148} :catch_148

    :catch_148
    move-exception p0

    .line 1551
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static castToLong(Ljava/lang/Object;)Ljava/lang/Long;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 847
    :cond_4
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_13

    .line 848
    check-cast p0, Ljava/math/BigDecimal;

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->longValue(Ljava/math/BigDecimal;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 851
    :cond_13
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_22

    .line 852
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 855
    :cond_22
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_7a

    .line 856
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 857
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_79

    const-string v2, "null"

    .line 858
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "NULL"

    .line 859
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    goto :goto_79

    :cond_40
    const/16 v2, 0x2c

    .line 862
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_51

    const-string v2, ","

    const-string v3, ""

    .line 863
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 866
    :cond_51
    :try_start_51
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_59} :catch_5a

    return-object p0

    :catch_5a
    nop

    .line 870
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 872
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 873
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 875
    :cond_6b
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    if-eqz v0, :cond_7a

    .line 877
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_79
    :goto_79
    return-object v0

    .line 881
    :cond_7a
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_ac

    .line 882
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 883
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_ac

    const-string v1, "andIncrement"

    .line 884
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    const-string v1, "andDecrement"

    .line 885
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 886
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 887
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 888
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 889
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 893
    :cond_ac
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_c2

    .line 894
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_bb

    const-wide/16 v0, 0x1

    goto :goto_bd

    :cond_bb
    const-wide/16 v0, 0x0

    :goto_bd
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 897
    :cond_c2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to long, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToShort(Ljava/lang/Object;)Ljava/lang/Short;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 294
    :cond_4
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_13

    .line 295
    check-cast p0, Ljava/math/BigDecimal;

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->shortValue(Ljava/math/BigDecimal;)S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 298
    :cond_13
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_22

    .line 299
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 302
    :cond_22
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_49

    .line 303
    check-cast p0, Ljava/lang/String;

    .line 304
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_48

    const-string v1, "null"

    .line 305
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "NULL"

    .line 306
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_48

    .line 309
    :cond_3f
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_48
    :goto_48
    return-object v0

    .line 312
    :cond_49
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_58

    .line 313
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 316
    :cond_58
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to short, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 579
    :cond_4
    instance-of v1, p0, Ljava/sql/Date;

    if-eqz v1, :cond_b

    .line 580
    check-cast p0, Ljava/sql/Date;

    return-object p0

    .line 582
    :cond_b
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_1b

    .line 583
    new-instance v0, Ljava/sql/Date;

    check-cast p0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    return-object v0

    .line 585
    :cond_1b
    instance-of v1, p0, Ljava/util/Calendar;

    if-eqz v1, :cond_2b

    .line 586
    new-instance v0, Ljava/sql/Date;

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    return-object v0

    .line 590
    :cond_2b
    instance-of v1, p0, Ljava/math/BigDecimal;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_39

    .line 591
    move-object v1, p0

    check-cast v1, Ljava/math/BigDecimal;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->longValue(Ljava/math/BigDecimal;)J

    move-result-wide v4

    goto :goto_46

    .line 592
    :cond_39
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_45

    .line 593
    move-object v1, p0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    goto :goto_46

    :cond_45
    move-wide v4, v2

    .line 596
    :goto_46
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_a0

    .line 597
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 598
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9f

    const-string v4, "null"

    .line 599
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9f

    const-string v4, "NULL"

    .line 600
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    goto :goto_9f

    .line 603
    :cond_64
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 604
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_a0

    .line 606
    :cond_6f
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 607
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 608
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_a0

    .line 610
    :cond_88
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to Timestamp, value : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9f
    :goto_9f
    return-object v0

    :cond_a0
    :goto_a0
    cmp-long v0, v4, v2

    if-lez v0, :cond_aa

    .line 617
    new-instance p0, Ljava/sql/Date;

    invoke-direct {p0, v4, v5}, Ljava/sql/Date;-><init>(J)V

    return-object p0

    .line 615
    :cond_aa
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to Date, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToSqlTime(Ljava/lang/Object;)Ljava/sql/Time;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 632
    :cond_4
    instance-of v1, p0, Ljava/sql/Time;

    if-eqz v1, :cond_b

    .line 633
    check-cast p0, Ljava/sql/Time;

    return-object p0

    .line 635
    :cond_b
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_1b

    .line 636
    new-instance v0, Ljava/sql/Time;

    check-cast p0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V

    return-object v0

    .line 638
    :cond_1b
    instance-of v1, p0, Ljava/util/Calendar;

    if-eqz v1, :cond_2b

    .line 639
    new-instance v0, Ljava/sql/Time;

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V

    return-object v0

    .line 643
    :cond_2b
    instance-of v1, p0, Ljava/math/BigDecimal;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_39

    .line 644
    move-object v1, p0

    check-cast v1, Ljava/math/BigDecimal;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->longValue(Ljava/math/BigDecimal;)J

    move-result-wide v4

    goto :goto_46

    .line 645
    :cond_39
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_45

    .line 646
    move-object v1, p0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    goto :goto_46

    :cond_45
    move-wide v4, v2

    .line 649
    :goto_46
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_98

    .line 650
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 651
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_97

    const-string v4, "null"

    .line 652
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5c

    goto :goto_97

    .line 655
    :cond_5c
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 656
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_98

    .line 658
    :cond_67
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 659
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 660
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_98

    .line 662
    :cond_80
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to Timestamp, value : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_97
    :goto_97
    return-object v0

    :cond_98
    :goto_98
    cmp-long v0, v4, v2

    if-lez v0, :cond_a2

    .line 669
    new-instance p0, Ljava/sql/Time;

    invoke-direct {p0, v4, v5}, Ljava/sql/Time;-><init>(J)V

    return-object p0

    .line 667
    :cond_a2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to Date, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 236
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;
    .registers 23

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 676
    :cond_6
    instance-of v2, v0, Ljava/util/Calendar;

    if-eqz v2, :cond_16

    .line 677
    new-instance v1, Ljava/sql/Timestamp;

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v1

    .line 679
    :cond_16
    instance-of v2, v0, Ljava/sql/Timestamp;

    if-eqz v2, :cond_1d

    .line 680
    check-cast v0, Ljava/sql/Timestamp;

    return-object v0

    .line 682
    :cond_1d
    instance-of v2, v0, Ljava/util/Date;

    if-eqz v2, :cond_2d

    .line 683
    new-instance v1, Ljava/sql/Timestamp;

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v1

    .line 686
    :cond_2d
    instance-of v2, v0, Ljava/math/BigDecimal;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_3b

    .line 687
    move-object v2, v0

    check-cast v2, Ljava/math/BigDecimal;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->longValue(Ljava/math/BigDecimal;)J

    move-result-wide v5

    goto :goto_48

    .line 688
    :cond_3b
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_47

    .line 689
    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    goto :goto_48

    :cond_47
    move-wide v5, v3

    .line 691
    :goto_48
    instance-of v2, v0, Ljava/lang/String;

    const-string v7, "can not cast to Timestamp, value : "

    if-eqz v2, :cond_1ae

    .line 692
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 693
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1ad

    const-string v5, "null"

    .line 694
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1ad

    const-string v5, "NULL"

    .line 695
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    goto/16 :goto_1ad

    :cond_69
    const-string v1, ".000000000"

    .line 698
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v5, 0x7

    const/16 v6, 0xa

    const/4 v8, 0x0

    if-eqz v1, :cond_7f

    .line 699
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v2, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_90

    :cond_7f
    const-string v1, ".000000"

    .line 700
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 701
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v2, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 704
    :cond_90
    :goto_90
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v9, 0x1d

    if-ne v1, v9, :cond_175

    const/4 v1, 0x4

    .line 705
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v9, 0x2d

    if-ne v1, v9, :cond_175

    .line 706
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_175

    .line 707
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x20

    if-ne v1, v5, :cond_175

    const/16 v1, 0xd

    .line 708
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x3a

    if-ne v1, v5, :cond_175

    const/16 v1, 0x10

    .line 709
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_175

    const/16 v1, 0x13

    .line 710
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x2e

    if-ne v1, v5, :cond_175

    .line 712
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    .line 713
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x2

    .line 714
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x3

    .line 715
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 711
    invoke-static {v0, v3, v4, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->num(CCCC)I

    move-result v0

    const/4 v3, 0x5

    .line 717
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x6

    .line 718
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 716
    invoke-static {v3, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->num(CC)I

    move-result v3

    const/16 v4, 0x8

    .line 720
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    .line 721
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 719
    invoke-static {v4, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->num(CC)I

    move-result v9

    const/16 v4, 0xb

    .line 723
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xc

    .line 724
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 722
    invoke-static {v4, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->num(CC)I

    move-result v10

    const/16 v4, 0xe

    .line 726
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xf

    .line 727
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 725
    invoke-static {v4, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->num(CC)I

    move-result v11

    const/16 v4, 0x11

    .line 729
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x12

    .line 730
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 728
    invoke-static {v4, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->num(CC)I

    move-result v12

    const/16 v4, 0x14

    .line 732
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v4, 0x15

    .line 733
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v4, 0x16

    .line 734
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v4, 0x17

    .line 735
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v4, 0x18

    .line 736
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v4, 0x19

    .line 737
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v4, 0x1a

    .line 738
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v4, 0x1b

    .line 739
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v4, 0x1c

    .line 740
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v21

    .line 731
    invoke-static/range {v13 .. v21}, Lcom/alibaba/fastjson/util/TypeUtils;->num(CCCCCCCCC)I

    move-result v13

    .line 741
    new-instance v2, Ljava/sql/Timestamp;

    add-int/lit16 v7, v0, -0x76c

    add-int/lit8 v8, v3, -0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Ljava/sql/Timestamp;-><init>(IIIIIII)V

    return-object v2

    .line 744
    :cond_175
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_180

    .line 745
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_1ae

    .line 747
    :cond_180
    new-instance v1, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v5

    if-eqz v5, :cond_198

    .line 749
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    goto :goto_1ae

    .line 751
    :cond_198
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1ad
    :goto_1ad
    return-object v1

    :cond_1ae
    :goto_1ae
    cmp-long v1, v5, v3

    if-ltz v1, :cond_1b8

    .line 759
    new-instance v0, Ljava/sql/Timestamp;

    invoke-direct {v0, v5, v6}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0

    .line 757
    :cond_1b8
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static checkPrimitiveArray(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;
    .registers 4

    .line 2629
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "["

    .line 2632
    :goto_6
    instance-of v2, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v2, :cond_20

    .line 2633
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 2634
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 2638
    :cond_20
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_fe

    .line 2639
    check-cast v0, Ljava/lang/Class;

    .line 2640
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_fe

    .line 2642
    :try_start_2c
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_47

    .line 2643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto/16 :goto_fe

    .line 2644
    :cond_47
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_62

    .line 2645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto/16 :goto_fe

    .line 2646
    :cond_62
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_7d

    .line 2647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto/16 :goto_fe

    .line 2648
    :cond_7d
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_97

    .line 2649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_fe

    .line 2650
    :cond_97
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_b1

    .line 2651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "I"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_fe

    .line 2652
    :cond_b1
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_cb

    .line 2653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "J"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_fe

    .line 2654
    :cond_cb
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_e5

    .line 2655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_fe

    .line 2656
    :cond_e5
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_fe

    .line 2657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_fe
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2c .. :try_end_fe} :catch_fe

    :catch_fe
    :cond_fe
    :goto_fe
    return-object p0
.end method

.method public static clearClassMapping()V
    .registers 1

    .line 1662
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 1663
    invoke-static {}, Lcom/alibaba/fastjson/util/TypeUtils;->addBaseClassMappings()V

    return-void
.end method

.method private static computeFields(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;[",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 2230
    array-length v4, v3

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v4, :cond_a4

    aget-object v10, v3, v6

    .line 2231
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_1a

    goto/16 :goto_a0

    .line 2234
    :cond_1a
    const-class v7, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v10, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    move-object/from16 v17, v7

    check-cast v17, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 2236
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v17, :cond_69

    .line 2239
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v9

    if-nez v9, :cond_33

    goto/16 :goto_a0

    .line 2242
    :cond_33
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v9

    .line 2243
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 2244
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v12

    .line 2245
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_55

    .line 2246
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v7

    .line 2248
    :cond_55
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_63

    .line 2249
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v8

    :cond_63
    move-object/from16 v18, v8

    move v13, v9

    move v14, v11

    move v15, v12

    goto :goto_6e

    :cond_69
    move-object/from16 v18, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_6e
    if-eqz v0, :cond_79

    .line 2253
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_79

    goto :goto_a0

    :cond_79
    if-eqz v1, :cond_7f

    .line 2259
    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_7f
    move-object v12, v7

    .line 2261
    invoke-interface {v2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a0

    .line 2262
    new-instance v11, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object v7, v11

    move-object v8, v12

    move-object v5, v11

    move-object/from16 v11, p0

    move-object/from16 v20, v12

    move-object/from16 v12, v16

    move-object/from16 v16, v19

    invoke-direct/range {v7 .. v18}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v7, v20

    .line 2264
    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a0
    :goto_a0
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_a

    :cond_a4
    return-void
.end method

.method public static computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;
    .registers 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;Z",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    .line 1871
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1872
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v16

    const/16 v17, 0x0

    .line 1875
    move-object/from16 v0, v17

    check-cast v0, [[Ljava/lang/annotation/Annotation;

    .line 1878
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1879
    array-length v9, v10

    move-object/from16 v1, v17

    move-object v2, v1

    move-object v3, v2

    const/4 v7, 0x0

    :goto_21
    if-ge v7, v9, :cond_536

    aget-object v6, v10, v7

    .line 1880
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v18, 0x0

    .line 1883
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_45

    :cond_35
    :goto_35
    move-object/from16 v19, v0

    :goto_37
    move-object/from16 v20, v2

    move/from16 v31, v7

    move/from16 v33, v9

    move-object/from16 v34, v10

    move-object v0, v11

    move-object v14, v13

    const/16 v32, 0x0

    goto/16 :goto_524

    .line 1887
    :cond_45
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    .line 1888
    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_52

    goto :goto_35

    .line 1892
    :cond_52
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-eqz v8, :cond_5a

    goto :goto_35

    .line 1896
    :cond_5a
    const-class v8, Ljava/lang/ClassLoader;

    if-eq v4, v8, :cond_35

    const-class v8, Ljava/io/InputStream;

    if-eq v4, v8, :cond_35

    const-class v8, Ljava/io/Reader;

    if-ne v4, v8, :cond_67

    goto :goto_35

    :cond_67
    const-string v8, "getMetaClass"

    .line 1902
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 1903
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v19, v0

    const-string v0, "groovy.lang.MetaClass"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    :goto_7d
    goto :goto_37

    :cond_7e
    move-object/from16 v19, v0

    :cond_80
    const-string v0, "getSuppressed"

    .line 1906
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 1907
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v8, Ljava/lang/Throwable;

    if-ne v0, v8, :cond_91

    :goto_90
    goto :goto_7d

    :cond_91
    if-eqz v16, :cond_9a

    .line 1911
    invoke-static {v12, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlinIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    goto :goto_90

    :cond_9a
    const/4 v0, 0x0

    .line 1917
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1918
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v6, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-nez v0, :cond_ad

    .line 1920
    invoke-static {v12, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v0

    :cond_ad
    move-object/from16 v20, v2

    const-string v2, "get"

    move-object/from16 v21, v11

    if-nez v0, :cond_188

    if-eqz v16, :cond_188

    if-nez v1, :cond_103

    .line 1924
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1925
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getKotlinConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v22

    if-eqz v22, :cond_fe

    .line 1927
    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/util/TypeUtils;->getParameterAnnotations(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v19

    .line 1928
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_f5

    .line 1930
    array-length v3, v11

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1931
    array-length v0, v11

    move-object/from16 v24, v8

    const/4 v8, 0x0

    invoke-static {v11, v8, v3, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1933
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1934
    array-length v0, v11

    new-array v0, v0, [S

    move-object/from16 v25, v1

    .line 1935
    :goto_e1
    array-length v1, v11

    if-ge v8, v1, :cond_f0

    .line 1936
    aget-object v1, v11, v8

    invoke-static {v3, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 1937
    aput-short v8, v0, v1

    add-int/lit8 v8, v8, 0x1

    int-to-short v8, v8

    goto :goto_e1

    :cond_f0
    move-object v11, v3

    move-object/from16 v1, v25

    move-object v3, v0

    goto :goto_fb

    :cond_f5
    move-object/from16 v23, v0

    move-object/from16 v25, v1

    move-object/from16 v24, v8

    :goto_fb
    move-object/from16 v0, v19

    goto :goto_10b

    :cond_fe
    move-object/from16 v23, v0

    move-object/from16 v25, v1

    goto :goto_105

    :cond_103
    move-object/from16 v23, v0

    :goto_105
    move-object/from16 v24, v8

    move-object/from16 v0, v19

    move-object/from16 v11, v20

    :goto_10b
    if-eqz v11, :cond_17b

    if-eqz v3, :cond_17b

    .line 1943
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17b

    const/4 v8, 0x3

    .line 1944
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1945
    invoke-static {v11, v8}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v19

    move-object/from16 v20, v1

    move-object/from16 v25, v4

    if-gez v19, :cond_13a

    const/4 v1, 0x0

    .line 1947
    :goto_129
    array-length v4, v11

    if-ge v1, v4, :cond_13a

    .line 1948
    aget-object v4, v11, v1

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_137

    move/from16 v19, v1

    goto :goto_13a

    :cond_137
    add-int/lit8 v1, v1, 0x1

    goto :goto_129

    :cond_13a
    :goto_13a
    if-ltz v19, :cond_176

    .line 1955
    aget-short v1, v3, v19

    .line 1956
    aget-object v1, v0, v1

    if-eqz v1, :cond_15d

    .line 1958
    array-length v4, v1

    move-object/from16 v19, v0

    const/4 v0, 0x0

    :goto_146
    move-object/from16 v26, v3

    if-ge v0, v4, :cond_161

    aget-object v3, v1, v0

    move-object/from16 v27, v1

    .line 1959
    instance-of v1, v3, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v1, :cond_156

    .line 1960
    move-object v0, v3

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_163

    :cond_156
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v26

    move-object/from16 v1, v27

    goto :goto_146

    :cond_15d
    move-object/from16 v19, v0

    move-object/from16 v26, v3

    :cond_161
    move-object/from16 v0, v23

    :goto_163
    if-nez v0, :cond_173

    .line 1966
    invoke-static {v8, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_173

    .line 1968
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    :cond_173
    move-object/from16 v27, v0

    goto :goto_185

    :cond_176
    move-object/from16 v19, v0

    move-object/from16 v26, v3

    goto :goto_183

    :cond_17b
    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v26, v3

    move-object/from16 v25, v4

    :goto_183
    move-object/from16 v27, v23

    :goto_185
    move-object/from16 v23, v11

    goto :goto_196

    :cond_188
    move-object/from16 v23, v0

    move-object/from16 v25, v4

    move-object/from16 v24, v8

    move-object/from16 v26, v3

    move-object/from16 v27, v23

    move-object/from16 v23, v20

    move-object/from16 v20, v1

    :goto_196
    if-eqz v27, :cond_224

    .line 1975
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v0

    if-nez v0, :cond_1ab

    :goto_19e
    move/from16 v31, v7

    move/from16 v33, v9

    move-object/from16 v34, v10

    move-object v14, v13

    move-object/from16 v0, v21

    const/16 v32, 0x0

    goto/16 :goto_51d

    .line 1978
    :cond_1ab
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v8

    .line 1979
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 1980
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v28

    .line 1981
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_20b

    .line 1982
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz v13, :cond_1d8

    .line 1984
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1d8

    goto :goto_19e

    :cond_1d8
    move-object v5, v0

    .line 1989
    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    move-object v6, v4

    move-object/from16 v4, p0

    move-object/from16 v29, v5

    move-object/from16 v5, v22

    move-object/from16 v30, v6

    move v6, v8

    move/from16 v31, v7

    move v7, v11

    const/16 v32, 0x0

    move/from16 v8, v28

    move/from16 v33, v9

    move-object/from16 v9, v27

    move-object/from16 v34, v10

    move-object/from16 v10, v24

    move-object/from16 v15, v21

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v1, v29

    move-object/from16 v0, v30

    .line 1991
    invoke-interface {v15, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_243

    :cond_20b
    move/from16 v31, v7

    move/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v15, v21

    const/16 v32, 0x0

    .line 1994
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_232

    .line 1995
    invoke-interface/range {v27 .. v27}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v18

    goto :goto_232

    :cond_224
    move/from16 v31, v7

    move/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v15, v21

    const/16 v32, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v28, 0x0

    .line 1998
    :cond_232
    :goto_232
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v10, 0x66

    const/16 v9, 0x5f

    if-eqz v0, :cond_3c5

    .line 1999
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_246

    :goto_243
    move-object v14, v13

    goto/16 :goto_51a

    :cond_246
    const-string v0, "getClass"

    .line 2002
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24f

    goto :goto_243

    :cond_24f
    const-string v0, "getDeclaringClass"

    .line 2005
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25e

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_25e

    goto :goto_243

    :cond_25e
    const/4 v0, 0x3

    .line 2008
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2011
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_2b9

    const/16 v3, 0x200

    if-le v2, v3, :cond_26e

    goto :goto_2b9

    :cond_26e
    if-ne v2, v9, :cond_289

    .line 2021
    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2022
    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    if-nez v0, :cond_2d0

    .line 2025
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2026
    invoke-static {v0, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_287

    goto :goto_2b7

    :cond_287
    move-object v2, v0

    goto :goto_2b7

    :cond_289
    if-ne v2, v10, :cond_291

    const/4 v0, 0x3

    .line 2032
    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2ce

    :cond_291
    const/4 v0, 0x3

    .line 2033
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2ac

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_2ac

    .line 2034
    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2ce

    .line 2036
    :cond_2ac
    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2037
    invoke-static {v2, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_2b7

    goto :goto_243

    :cond_2b7
    :goto_2b7
    move-object v0, v1

    goto :goto_2d0

    .line 2014
    :cond_2b9
    :goto_2b9
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v1, :cond_2c6

    .line 2015
    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2ca

    .line 2017
    :cond_2c6
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByMethodName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2019
    :goto_2ca
    invoke-static {v14, v5, v1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_2ce
    move-object/from16 v0, v17

    .line 2042
    :cond_2d0
    :goto_2d0
    invoke-static {v12, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d8

    goto/16 :goto_243

    :cond_2d8
    if-nez v0, :cond_2de

    .line 2049
    invoke-static {v2, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    :cond_2de
    const/4 v1, 0x1

    if-nez v0, :cond_301

    .line 2052
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_301

    .line 2053
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_301

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_301

    const/4 v7, 0x3

    .line 2055
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2056
    invoke-static {v0, v14}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_302

    :cond_301
    const/4 v7, 0x3

    :goto_302
    move-object v3, v0

    if-eqz v3, :cond_36a

    .line 2061
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v3, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_364

    .line 2063
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v4

    if-nez v4, :cond_317

    goto/16 :goto_243

    .line 2066
    :cond_317
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v4

    .line 2067
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v8

    .line 2068
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v11

    .line 2069
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_349

    .line 2070
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2071
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    if-eqz v13, :cond_34b

    .line 2073
    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_34b

    goto/16 :goto_243

    :cond_349
    move-object/from16 v1, v24

    .line 2079
    :cond_34b
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_359

    .line 2080
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v18

    :cond_359
    move/from16 v21, v8

    move/from16 v28, v11

    move-object/from16 v22, v18

    move-object v11, v0

    move-object v8, v1

    move/from16 v18, v4

    goto :goto_374

    :cond_364
    move/from16 v21, v11

    move-object/from16 v22, v18

    move-object v11, v0

    goto :goto_370

    :cond_36a
    move/from16 v21, v11

    move-object/from16 v11, v17

    move-object/from16 v22, v18

    :goto_370
    move/from16 v18, v8

    move-object/from16 v8, v24

    :goto_374
    if-eqz v13, :cond_381

    .line 2085
    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_381

    goto/16 :goto_243

    :cond_381
    move-object v4, v15

    move-object/from16 v15, p5

    if-eqz v15, :cond_390

    .line 2090
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_390

    .line 2091
    invoke-virtual {v15, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_390
    move-object v8, v2

    .line 2093
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v24, 0x0

    move-object v0, v2

    move-object v1, v8

    move-object/from16 v35, v2

    move-object v2, v6

    move-object v15, v4

    move-object/from16 v13, v25

    move-object/from16 v4, p0

    move-object v12, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v6

    move/from16 v6, v18

    const/16 v25, 0x3

    move/from16 v7, v21

    move-object/from16 v36, v8

    move/from16 v8, v28

    move-object/from16 v9, v27

    move-object v10, v11

    const/4 v14, 0x3

    move-object/from16 v11, v22

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v2, v36

    .line 2095
    invoke-interface {v15, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v8, v18

    move/from16 v11, v21

    move-object/from16 v18, v22

    goto :goto_3cb

    :cond_3c5
    move-object v12, v5

    move-object/from16 v24, v6

    move-object/from16 v13, v25

    const/4 v14, 0x3

    :goto_3cb
    const-string v0, "is"

    .line 2097
    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_518

    .line 2098
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v14, :cond_3db

    goto/16 :goto_518

    .line 2101
    :cond_3db
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v13, v0, :cond_3e5

    const-class v0, Ljava/lang/Boolean;

    if-eq v13, v0, :cond_3e5

    goto/16 :goto_518

    :cond_3e5
    const/4 v0, 0x2

    .line 2105
    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2108
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_41f

    .line 2109
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v1, :cond_3fd

    .line 2110
    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_418

    .line 2112
    :cond_3fd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_418
    move-object/from16 v13, p3

    .line 2114
    invoke-static {v13, v12, v1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_449

    :cond_41f
    move-object/from16 v13, p3

    const/16 v2, 0x5f

    const/4 v3, 0x3

    if-ne v1, v2, :cond_441

    .line 2116
    invoke-virtual {v12, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2117
    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    if-nez v2, :cond_43c

    .line 2120
    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2121
    invoke-static {v0, v13}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-nez v2, :cond_43d

    :cond_43c
    move-object v0, v1

    :cond_43d
    move-object v1, v12

    :goto_43e
    move-object/from16 v12, p0

    goto :goto_459

    :cond_441
    const/16 v2, 0x66

    if-ne v1, v2, :cond_44d

    .line 2127
    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_449
    move-object v1, v12

    move-object/from16 v2, v17

    goto :goto_43e

    .line 2129
    :cond_44d
    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2130
    invoke-static {v0, v13}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-nez v2, :cond_43d

    goto/16 :goto_518

    .line 2135
    :goto_459
    invoke-static {v12, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_461

    goto/16 :goto_518

    :cond_461
    if-nez v2, :cond_467

    .line 2141
    invoke-static {v0, v13}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v2

    :cond_467
    if-nez v2, :cond_46f

    .line 2145
    invoke-static {v1, v13}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v3, v1

    goto :goto_470

    :cond_46f
    move-object v3, v2

    :goto_470
    if-eqz v3, :cond_4d6

    .line 2149
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v3, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v1, :cond_4d0

    .line 2151
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v2

    if-nez v2, :cond_484

    goto/16 :goto_518

    .line 2154
    :cond_484
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v2

    .line 2155
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v4

    .line 2156
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v5

    .line 2157
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4b3

    .line 2158
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v14, p2

    if-eqz v14, :cond_4b5

    .line 2160
    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4b5

    goto :goto_4ea

    :cond_4b3
    move-object/from16 v14, p2

    .line 2166
    :cond_4b5
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4c9

    .line 2167
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v6

    move-object v10, v1

    move v7, v4

    move v8, v5

    move-object v11, v6

    move v6, v2

    goto :goto_4e0

    :cond_4c9
    move-object v10, v1

    move v6, v2

    move v7, v4

    move v8, v5

    move-object/from16 v11, v18

    goto :goto_4e0

    :cond_4d0
    move-object/from16 v14, p2

    move-object v10, v1

    move v6, v8

    move v7, v11

    goto :goto_4dc

    :cond_4d6
    move-object/from16 v14, p2

    move v6, v8

    move v7, v11

    move-object/from16 v10, v17

    :goto_4dc
    move-object/from16 v11, v18

    move/from16 v8, v28

    :goto_4e0
    if-eqz v14, :cond_4eb

    .line 2172
    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4eb

    :goto_4ea
    goto :goto_51a

    :cond_4eb
    move-object v9, v15

    move-object/from16 v15, p5

    if-eqz v15, :cond_4f4

    .line 2178
    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4f4
    move-object v5, v0

    .line 2181
    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4fd

    move-object v0, v9

    goto :goto_51d

    .line 2184
    :cond_4fd
    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v18, 0x0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v24

    move-object v13, v4

    move-object/from16 v4, p0

    move-object v12, v5

    move-object/from16 v5, v18

    move-object/from16 v37, v9

    move-object/from16 v9, v27

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v37

    .line 2186
    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_51d

    :cond_518
    :goto_518
    move-object/from16 v14, p2

    :goto_51a
    move-object v0, v15

    move-object/from16 v15, p5

    :goto_51d
    move-object/from16 v1, v20

    move-object/from16 v2, v23

    move-object/from16 v3, v26

    goto :goto_526

    :goto_524
    move-object/from16 v2, v20

    :goto_526
    add-int/lit8 v7, v31, 0x1

    move-object/from16 v12, p0

    move-object v11, v0

    move-object v13, v14

    move-object/from16 v0, v19

    move/from16 v9, v33

    move-object/from16 v10, v34

    move-object/from16 v14, p3

    goto/16 :goto_21

    :cond_536
    move-object v0, v11

    move-object v14, v13

    .line 2189
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    move-object/from16 v2, p0

    .line 2190
    invoke-static {v2, v14, v15, v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->computeFields(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V

    move/from16 v1, p4

    .line 2191
    invoke-static {v2, v1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getFieldInfos(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static computeGetters(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1854
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 1858
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1859
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1860
    invoke-static {p0, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V

    .line 1861
    sget-object v6, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static computeGettersWithFieldBase(Ljava/lang/Class;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 1845
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v1, p0

    :goto_6
    if-eqz v1, :cond_14

    .line 1847
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1848
    invoke-static {v1, p1, p3, v0, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->computeFields(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;Ljava/util/Map;[Ljava/lang/reflect/Field;)V

    .line 1846
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_6

    .line 1850
    :cond_14
    invoke-static {p0, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getFieldInfos(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static createActualTypeMap([Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/TypeVariable;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 2566
    array-length v0, p0

    .line 2567
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_13

    .line 2569
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_13
    return-object v1
.end method

.method public static createCollection(Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .registers 4

    .line 2669
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 2671
    const-class v1, Ljava/util/AbstractCollection;

    if-eq v0, v1, :cond_a3

    const-class v1, Ljava/util/Collection;

    if-ne v0, v1, :cond_e

    goto/16 :goto_a3

    .line 2674
    :cond_e
    const-class v1, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2675
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    goto/16 :goto_a8

    .line 2676
    :cond_1d
    const-class v1, Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2677
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    goto/16 :goto_a8

    .line 2678
    :cond_2c
    const-class v1, Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2679
    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    goto/16 :goto_a8

    .line 2680
    :cond_3b
    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 2681
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_a8

    .line 2682
    :cond_49
    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 2684
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_5f

    .line 2685
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_61

    .line 2687
    :cond_5f
    const-class p0, Ljava/lang/Object;

    .line 2689
    :goto_61
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    goto :goto_a8

    .line 2690
    :cond_68
    const-class p0, Ljava/util/Queue;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_9d

    sget-object p0, Lcom/alibaba/fastjson/util/TypeUtils;->class_deque:Ljava/lang/Class;

    if-eqz p0, :cond_7b

    .line 2691
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_7b

    goto :goto_9d

    .line 2695
    :cond_7b
    :try_start_7b
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_81} :catch_82

    goto :goto_a8

    .line 2697
    :catch_82
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create instance error, class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2692
    :cond_9d
    :goto_9d
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    goto :goto_a8

    .line 2673
    :cond_a3
    :goto_a3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_a8
    return-object p0
.end method

.method public static decapitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_38

    .line 2481
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_38

    .line 2484
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_26

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_26

    return-object p0

    .line 2487
    :cond_26
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 2488
    aget-char v0, p0, v2

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    aput-char v0, p0, v2

    .line 2489
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_38
    :goto_38
    return-object p0
.end method

.method public static fnv1a_64(Ljava/lang/String;)J
    .registers 6

    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v2, 0x0

    .line 2978
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1c

    .line 2979
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-long v3, v3

    xor-long/2addr v0, v3

    const-wide v3, 0x100000001b3L

    mul-long v0, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1c
    return-wide v0
.end method

.method public static fnv1a_64_extract(Ljava/lang/String;)J
    .registers 6

    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v2, 0x0

    .line 2949
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 2950
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_2d

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_19

    goto :goto_2d

    :cond_19
    const/16 v4, 0x41

    if-lt v3, v4, :cond_24

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_24

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    :cond_24
    int-to-long v3, v3

    xor-long/2addr v0, v3

    const-wide v3, 0x100000001b3L

    mul-long v0, v0, v3

    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_30
    return-wide v0
.end method

.method public static fnv1a_64_lower(Ljava/lang/String;)J
    .registers 6

    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v2, 0x0

    .line 2965
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 2966
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_1b

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_1b

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    :cond_1b
    int-to-long v3, v3

    xor-long/2addr v0, v3

    const-wide v3, 0x100000001b3L

    mul-long v0, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_27
    return-wide v0
.end method

.method private static getActualType(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 2584
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_b

    .line 2585
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    return-object p0

    .line 2586
    :cond_b
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1e

    .line 2587
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->makeParameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    return-object p0

    .line 2588
    :cond_1e
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_32

    .line 2589
    new-instance v0, Lcom/alibaba/fastjson/util/GenericArrayTypeImpl;

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getActualType(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/util/GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0

    :cond_32
    return-object p0
.end method

.method public static getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 3122
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3125
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 3126
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_f

    .line 3127
    check-cast v1, Ljava/lang/Class;

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    const/4 v2, 0x0

    if-eqz v1, :cond_37

    .line 3131
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 3132
    invoke-virtual {v1}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-nez v3, :cond_34

    .line 3133
    array-length v4, v1

    if-lez v4, :cond_34

    .line 3134
    array-length v4, v1

    const/4 v5, 0x0

    :goto_22
    if-ge v5, v4, :cond_34

    aget-object v3, v1, v5

    .line 3135
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_31

    goto :goto_34

    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_34
    :goto_34
    if-eqz v3, :cond_37

    return-object v3

    .line 3146
    :cond_37
    invoke-virtual {p0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-nez v0, :cond_53

    .line 3147
    array-length v1, p0

    if-lez v1, :cond_53

    .line 3148
    array-length v1, p0

    :goto_41
    if-ge v2, v1, :cond_53

    aget-object v0, p0, v2

    .line 3149
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_50

    goto :goto_53

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_53
    :goto_53
    return-object v0
.end method

.method public static getAnnotation(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 3159
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3161
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 3164
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 3165
    instance-of v2, v1, Ljava/lang/Class;

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    .line 3166
    check-cast v1, Ljava/lang/Class;

    goto :goto_15

    :cond_14
    move-object v1, v3

    :goto_15
    if-eqz v1, :cond_35

    .line 3171
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_1b
    if-eqz v1, :cond_2b

    .line 3173
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_2b

    .line 3176
    :try_start_21
    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_25
    .catch Ljava/lang/NoSuchFieldException; {:try_start_21 .. :try_end_25} :catch_26

    goto :goto_2b

    .line 3174
    :catch_26
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1b

    :cond_2b
    :goto_2b
    if-nez v3, :cond_2e

    return-object v0

    .line 3185
    :cond_2e
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_35

    return-object p0

    :cond_35
    return-object v0
.end method

.method public static getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 3194
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3196
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 3199
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 3200
    instance-of v2, v1, Ljava/lang/Class;

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    .line 3201
    check-cast v1, Ljava/lang/Class;

    goto :goto_15

    :cond_14
    move-object v1, v3

    :goto_15
    if-eqz v1, :cond_39

    .line 3206
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3207
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    :goto_1f
    if-eqz v1, :cond_2f

    .line 3209
    const-class v4, Ljava/lang/Object;

    if-eq v1, v4, :cond_2f

    .line 3212
    :try_start_25
    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_25 .. :try_end_29} :catch_2a

    goto :goto_2f

    .line 3210
    :catch_2a
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1f

    :cond_2f
    :goto_2f
    if-nez v3, :cond_32

    return-object v0

    .line 3221
    :cond_32
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_39

    return-object p0

    :cond_39
    return-object v0
.end method

.method public static getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 2413
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Class;

    if-ne v0, v1, :cond_b

    .line 2414
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 2417
    :cond_b
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1a

    .line 2418
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 2421
    :cond_1a
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 2422
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v1

    .line 2423
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_2e

    .line 2424
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 2426
    :cond_2e
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 2429
    :cond_33
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_48

    .line 2430
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2431
    array-length v0, p0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_48

    .line 2432
    aget-object p0, p0, v1

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 2436
    :cond_48
    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method public static getClassFromMapping(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1689
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public static getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 2604
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3d

    .line 2606
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 2607
    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_1e

    .line 2608
    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/WildcardType;

    .line 2609
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 2610
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 2611
    aget-object p0, v1, v0

    .line 2614
    :cond_1e
    instance-of v0, p0, Ljava/lang/Class;

    const-string v1, "can not create ASMParser"

    if-eqz v0, :cond_37

    .line 2615
    check-cast p0, Ljava/lang/Class;

    .line 2616
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_31

    return-object p0

    .line 2617
    :cond_31
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2620
    :cond_37
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2624
    :cond_3d
    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method private static getCollectionItemType(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 2527
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-class p0, Ljava/lang/Object;

    goto :goto_17

    .line 2529
    :cond_f
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionSuperType(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    :goto_17
    return-object p0
.end method

.method private static getCollectionItemType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;
    .registers 4

    .line 2533
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2534
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2535
    const-class v1, Ljava/util/Collection;

    if-ne v0, v1, :cond_14

    const/4 v0, 0x0

    .line 2536
    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getWildcardTypeUpperBounds(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 2538
    :cond_14
    check-cast v0, Ljava/lang/Class;

    .line 2539
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/alibaba/fastjson/util/TypeUtils;->createActualTypeMap([Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object p0

    .line 2540
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionSuperType(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2541
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_41

    .line 2542
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 2543
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2544
    array-length v2, v0

    if-lez v2, :cond_3c

    .line 2545
    invoke-static {v1, v0, p0}, Lcom/alibaba/fastjson/util/TypeUtils;->makeParameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_40

    .line 2546
    :cond_3c
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    :goto_40
    return-object p0

    .line 2548
    :cond_41
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public static getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 2

    .line 2517
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_b

    .line 2518
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 2520
    :cond_b
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_16

    .line 2521
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 2523
    :cond_16
    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method private static getCollectionSuperType(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 2553
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_20

    aget-object v4, v0, v3

    .line 2554
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 2555
    const-class v6, Ljava/util/Collection;

    if-ne v5, v6, :cond_14

    return-object v4

    .line 2558
    :cond_14
    const-class v6, Ljava/util/Collection;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1d

    move-object v2, v4

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_20
    if-nez v2, :cond_26

    .line 2562
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    :cond_26
    return-object v2
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 2440
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_3c

    aget-object v3, p2, v2

    .line 2441
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2442
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    return-object v3

    .line 2447
    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_39

    .line 2448
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-lt v5, v6, :cond_39

    const/16 v6, 0x7a

    if-gt v5, v6, :cond_39

    const/4 v5, 0x1

    .line 2449
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x41

    if-lt v5, v6, :cond_39

    const/16 v6, 0x5a

    if-gt v5, v6, :cond_39

    .line 2450
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    return-object v3

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2454
    :cond_3c
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_4f

    .line 2455
    const-class p2, Ljava/lang/Object;

    if-eq p0, p2, :cond_4f

    .line 2456
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0

    :cond_4f
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getFieldInfos(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 2195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2197
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz p0, :cond_14

    .line 2199
    invoke-interface {p0}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object p0

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    if-eqz p0, :cond_5c

    .line 2201
    array-length v1, p0

    if-lez v1, :cond_5c

    .line 2202
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 2203
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 2204
    iget-object v2, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 2207
    :cond_3d
    array-length p2, p0

    const/4 v1, 0x0

    :goto_3f
    if-ge v1, p2, :cond_54

    aget-object v2, p0, v1

    .line 2208
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v3, :cond_51

    .line 2210
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2211
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 2214
    :cond_54
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_68

    .line 2216
    :cond_5c
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_68

    .line 2218
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_68
    :goto_68
    return-object v0
.end method

.method public static getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 2

    .line 2384
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_5

    return-object p0

    .line 2387
    :cond_5
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_13

    .line 2388
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    :cond_13
    return-object p0
.end method

.method public static getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;
    .registers 9

    .line 3021
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    const-string v1, "kotlin.reflect.jvm.internal.KClassImpl"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v0, :cond_1f

    .line 3023
    :try_start_c
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Class;

    .line 3024
    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_1d

    goto :goto_1f

    .line 3026
    :catchall_1d
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    .line 3029
    :cond_1f
    :goto_1f
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x0

    if-nez v0, :cond_25

    return-object v4

    .line 3033
    :cond_25
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3e

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v0, :cond_3e

    .line 3035
    :try_start_2d
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getConstructors"

    new-array v5, v3, [Ljava/lang/Class;

    .line 3036
    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_3c

    goto :goto_3e

    .line 3038
    :catchall_3c
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    .line 3042
    :cond_3e
    :goto_3e
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    if-nez v0, :cond_59

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v0, :cond_59

    :try_start_46
    const-string v0, "kotlin.reflect.KFunction"

    .line 3044
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getParameters"

    new-array v5, v3, [Ljava/lang/Class;

    .line 3045
    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;
    :try_end_56
    .catchall {:try_start_46 .. :try_end_56} :catchall_57

    goto :goto_59

    .line 3047
    :catchall_57
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    .line 3051
    :cond_59
    :goto_59
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;

    if-nez v0, :cond_74

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v0, :cond_74

    :try_start_61
    const-string v0, "kotlin.reflect.KParameter"

    .line 3053
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getName"

    new-array v5, v3, [Ljava/lang/Class;

    .line 3054
    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;
    :try_end_71
    .catchall {:try_start_61 .. :try_end_71} :catchall_72

    goto :goto_74

    .line 3056
    :catchall_72
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    .line 3060
    :cond_74
    :goto_74
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_error:Z

    if-eqz v0, :cond_79

    return-object v4

    .line 3066
    :cond_79
    :try_start_79
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3067
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 3068
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v0, v4

    :goto_92
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 3069
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3070
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v0, :cond_af

    .line 3071
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_af

    goto :goto_b0

    :cond_af
    move-object v0, v1

    .line 3068
    :goto_b0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    goto :goto_92

    :cond_b4
    if-nez v0, :cond_b7

    return-object v4

    .line 3081
    :cond_b7
    sget-object p0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 3082
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3083
    :goto_c8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_e1

    .line 3084
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 3085
    sget-object v6, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v1
    :try_end_de
    .catchall {:try_start_79 .. :try_end_de} :catchall_e2

    add-int/lit8 v1, v1, 0x1

    goto :goto_c8

    :cond_e1
    return-object v0

    :catchall_e2
    move-exception p0

    .line 3089
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3090
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_error:Z

    return-object v4
.end method

.method public static getKotlinConstructor([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .registers 2

    const/4 v0, 0x0

    .line 2998
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKotlinConstructor([Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method public static getKotlinConstructor([Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .registers 9

    .line 3003
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_36

    aget-object v3, p0, v2

    .line 3004
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    if-eqz p1, :cond_12

    .line 3005
    array-length v5, v4

    array-length v6, p1

    if-eq v5, v6, :cond_12

    goto :goto_33

    .line 3009
    :cond_12
    array-length v5, v4

    if-lez v5, :cond_27

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "kotlin.jvm.internal.DefaultConstructorMarker"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    goto :goto_33

    :cond_27
    if-eqz v1, :cond_32

    .line 3012
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    array-length v4, v4

    if-lt v5, v4, :cond_32

    goto :goto_33

    :cond_32
    move-object v1, v3

    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_36
    return-object v1
.end method

.method public static getParameterAnnotations(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;
    .registers 11

    .line 3266
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3268
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 3271
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 3272
    instance-of v2, v1, Ljava/lang/Class;

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    .line 3273
    check-cast v1, Ljava/lang/Class;

    goto :goto_15

    :cond_14
    move-object v1, v3

    :goto_15
    if-eqz v1, :cond_71

    .line 3278
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    .line 3280
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3281
    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    :goto_25
    if-eqz v4, :cond_2f

    .line 3282
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3281
    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_25

    .line 3284
    :cond_2f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move-object v5, v1

    :goto_34
    if-eqz v5, :cond_67

    .line 3286
    const-class v6, Ljava/lang/Object;

    if-eq v5, v6, :cond_67

    if-eqz v4, :cond_5a

    .line 3290
    :try_start_3c
    array-length v6, p0

    add-int/2addr v6, v4

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    .line 3291
    array-length v8, p0

    invoke-static {p0, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v7, v4

    :goto_46
    if-lez v7, :cond_55

    add-int/lit8 v8, v7, -0x1

    .line 3293
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    aput-object v9, v6, v8

    add-int/lit8 v7, v7, -0x1

    goto :goto_46

    .line 3295
    :cond_55
    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    goto :goto_5e

    .line 3297
    :cond_5a
    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_5e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3c .. :try_end_5e} :catch_60

    :goto_5e
    move-object v3, p0

    goto :goto_67

    :catch_60
    add-int/lit8 v4, v4, -0x1

    .line 3287
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_34

    :cond_67
    :goto_67
    if-nez v3, :cond_6a

    return-object v0

    .line 3307
    :cond_6a
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_71

    return-object p0

    :cond_71
    return-object v0
.end method

.method public static getParameterAnnotations(Ljava/lang/reflect/Method;)[[Ljava/lang/annotation/Annotation;
    .registers 6

    .line 3230
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3232
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 3235
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 3236
    instance-of v2, v1, Ljava/lang/Class;

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    .line 3237
    check-cast v1, Ljava/lang/Class;

    goto :goto_15

    :cond_14
    move-object v1, v3

    :goto_15
    if-eqz v1, :cond_39

    .line 3242
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3243
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    :goto_1f
    if-eqz v1, :cond_2f

    .line 3245
    const-class v4, Ljava/lang/Object;

    if-eq v1, v4, :cond_2f

    .line 3248
    :try_start_25
    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_25 .. :try_end_29} :catch_2a

    goto :goto_2f

    .line 3246
    :catch_2a
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1f

    :cond_2f
    :goto_2f
    if-nez v3, :cond_32

    return-object v0

    .line 3257
    :cond_32
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_39

    return-object p0

    :cond_39
    return-object v0
.end method

.method public static getParserFeatures(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 2473
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 2477
    :cond_c
    invoke-interface {p0}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result p0

    return p0
.end method

.method private static getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2271
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z

    if-eqz v0, :cond_15

    .line 2272
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2273
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2274
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    move-object p2, p1

    :cond_15
    return-object p2
.end method

.method public static getPropertyNameByMethodName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 2704
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_7

    .line 2705
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 2706
    :cond_7
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_16

    .line 2707
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 2708
    :cond_16
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    const-string v1, "TODO"

    if-eqz v0, :cond_34

    .line 2709
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 2710
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2711
    array-length v0, p0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2e

    const/4 v0, 0x0

    .line 2712
    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 2714
    :cond_2e
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2717
    :cond_34
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSerializeFeatures(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 2465
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 2469
    :cond_c
    invoke-interface {p0}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result p0

    return p0
.end method

.method public static getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/fastjson/annotation/JSONField;"
        }
    .end annotation

    .line 2281
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 2282
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_5d

    .line 2283
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 2284
    array-length v4, v0

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v4, :cond_5d

    aget-object v6, v0, v5

    .line 2285
    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_19
    if-ge v8, v7, :cond_5a

    aget-object v9, v6, v8

    .line 2286
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 2287
    array-length v11, v10

    array-length v12, v1

    if-eq v11, v12, :cond_26

    goto :goto_57

    .line 2290
    :cond_26
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_35

    goto :goto_57

    :cond_35
    const/4 v11, 0x0

    .line 2294
    :goto_36
    array-length v12, v1

    if-ge v11, v12, :cond_48

    .line 2295
    aget-object v12, v10, v11

    aget-object v13, v1, v11

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_45

    const/4 v10, 0x0

    goto :goto_49

    :cond_45
    add-int/lit8 v11, v11, 0x1

    goto :goto_36

    :cond_48
    const/4 v10, 0x1

    :goto_49
    if-nez v10, :cond_4c

    goto :goto_57

    .line 2303
    :cond_4c
    const-class v10, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v9, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v9, :cond_57

    return-object v9

    :cond_57
    :goto_57
    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    :cond_5a
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 2310
    :cond_5d
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_65

    return-object v0

    .line 2314
    :cond_65
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 2315
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 2316
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v4, p0

    const/4 v5, 0x0

    :goto_79
    if-ge v5, v4, :cond_ba

    aget-object v6, p0, v5

    .line 2317
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 2318
    array-length v8, v7

    array-length v9, v1

    if-eq v8, v9, :cond_86

    goto :goto_b7

    .line 2321
    :cond_86
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_95

    goto :goto_b7

    :cond_95
    const/4 v8, 0x0

    .line 2325
    :goto_96
    array-length v9, v1

    if-ge v8, v9, :cond_a8

    .line 2326
    aget-object v9, v7, v8

    aget-object v10, v1, v8

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a5

    const/4 v7, 0x0

    goto :goto_a9

    :cond_a5
    add-int/lit8 v8, v8, 0x1

    goto :goto_96

    :cond_a8
    const/4 v7, 0x1

    :goto_a9
    if-nez v7, :cond_ac

    goto :goto_b7

    .line 2334
    :cond_ac
    const-class v7, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-static {v6, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v6, :cond_b7

    return-object v6

    :cond_b7
    :goto_b7
    add-int/lit8 v5, v5, 0x1

    goto :goto_79

    :cond_ba
    return-object v0
.end method

.method private static getWildcardTypeUpperBounds(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 2

    .line 2595
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_13

    .line 2596
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 2597
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2598
    array-length v0, p0

    if-lez v0, :cond_11

    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_13

    :cond_11
    const-class p0, Ljava/lang/Object;

    :cond_13
    :goto_13
    return-object p0
.end method

.method public static getXmlAccessorType(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 2

    .line 181
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    if-nez v0, :cond_14

    :try_start_8
    const-string v0, "javax.xml.bind.annotation.XmlAccessorType"

    .line 184
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_11

    goto :goto_14

    :catchall_11
    const/4 v0, 0x1

    .line 186
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    .line 190
    :cond_14
    :goto_14
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    if-nez v0, :cond_1a

    const/4 p0, 0x0

    return-object p0

    .line 194
    :cond_1a
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method public static intValue(Ljava/math/BigDecimal;)I
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 931
    :cond_4
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    const/16 v1, -0x64

    if-lt v0, v1, :cond_15

    const/16 v1, 0x64

    if-gt v0, v1, :cond_15

    .line 933
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    return p0

    .line 936
    :cond_15
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValueExact()I

    move-result p0

    return p0
.end method

.method public static isAnnotationPresentManyToMany(Ljava/lang/reflect/Method;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 2785
    :cond_4
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    const/4 v2, 0x1

    if-nez v1, :cond_18

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany_error:Z

    if-nez v1, :cond_18

    :try_start_d
    const-string v1, "javax.persistence.ManyToMany"

    .line 2787
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_16

    goto :goto_18

    .line 2790
    :catchall_16
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany_error:Z

    .line 2793
    :cond_18
    :goto_18
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    if-eqz v1, :cond_2d

    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2c

    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_ManyToMany:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_2d

    :cond_2c
    const/4 v0, 0x1

    :cond_2d
    return v0
.end method

.method public static isAnnotationPresentOneToMany(Ljava/lang/reflect/Method;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 2768
    :cond_4
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    const/4 v2, 0x1

    if-nez v1, :cond_18

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany_error:Z

    if-nez v1, :cond_18

    :try_start_d
    const-string v1, "javax.persistence.OneToMany"

    .line 2770
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_16

    goto :goto_18

    .line 2773
    :catchall_16
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany_error:Z

    .line 2776
    :cond_18
    :goto_18
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_OneToMany:Ljava/lang/Class;

    if-eqz v1, :cond_23

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 v0, 0x1

    :cond_23
    return v0
.end method

.method public static isClob(Ljava/lang/Class;)Z
    .registers 2

    .line 216
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_Clob:Ljava/lang/Class;

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_Clob_error:Z

    if-nez v0, :cond_14

    :try_start_8
    const-string v0, "java.sql.Clob"

    .line 219
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_Clob:Ljava/lang/Class;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_11

    goto :goto_14

    :catchall_11
    const/4 v0, 0x1

    .line 221
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_Clob_error:Z

    .line 225
    :cond_14
    :goto_14
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_Clob:Ljava/lang/Class;

    if-nez v0, :cond_1a

    const/4 p0, 0x0

    return p0

    .line 229
    :cond_1a
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_Clob:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static isGenericParamType(Ljava/lang/reflect/Type;)Z
    .registers 4

    .line 2373
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 2376
    :cond_6
    instance-of v0, p0, Ljava/lang/Class;

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    .line 2377
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2378
    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_1c

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return v1

    :cond_1e
    return v2
.end method

.method public static isHibernateInitialized(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 2801
    :cond_4
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v1, :cond_24

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized_error:Z

    if-nez v1, :cond_24

    :try_start_d
    const-string v1, "org.hibernate.Hibernate"

    .line 2803
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "isInitialized"

    new-array v4, v2, [Ljava/lang/Class;

    .line 2804
    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_22

    goto :goto_24

    .line 2807
    :catchall_22
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized_error:Z

    .line 2810
    :cond_24
    :goto_24
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->method_HibernateIsInitialized:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_38

    const/4 v3, 0x0

    :try_start_29
    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v0

    .line 2812
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 2813
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_38

    return p0

    :catchall_38
    :cond_38
    return v2
.end method

.method private static isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 2344
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 2349
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->includes()[Ljava/lang/String;

    move-result-object v2

    .line 2350
    array-length v3, v2

    const/4 v4, 0x1

    if-lez v3, :cond_24

    const/4 p0, 0x0

    .line 2351
    :goto_14
    array-length v0, v2

    if-ge p0, v0, :cond_23

    .line 2352
    aget-object v0, v2, p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    return v1

    :cond_20
    add-int/lit8 p0, p0, 0x1

    goto :goto_14

    :cond_23
    return v4

    .line 2358
    :cond_24
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->ignores()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 2359
    :goto_29
    array-length v3, v0

    if-ge v2, v3, :cond_38

    .line 2360
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    return v4

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 2366
    :cond_38
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_4f

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 2367
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4f
    return v1
.end method

.method public static isJacksonCreator(Ljava/lang/reflect/Method;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 3320
    :cond_4
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_JacksonCreator:Ljava/lang/Class;

    const/4 v2, 0x1

    if-nez v1, :cond_18

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_JacksonCreator_error:Z

    if-nez v1, :cond_18

    :try_start_d
    const-string v1, "com.fasterxml.jackson.annotation.JsonCreator"

    .line 3322
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_JacksonCreator:Ljava/lang/Class;
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_16

    goto :goto_18

    .line 3325
    :catchall_16
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->class_JacksonCreator_error:Z

    .line 3328
    :cond_18
    :goto_18
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->class_JacksonCreator:Ljava/lang/Class;

    if-eqz v1, :cond_23

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 v0, 0x1

    :cond_23
    return v0
.end method

.method public static isKotlin(Ljava/lang/Class;)Z
    .registers 3

    .line 2987
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    const/4 v1, 0x1

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata_error:Z

    if-nez v0, :cond_14

    :try_start_9
    const-string v0, "kotlin.Metadata"

    .line 2989
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_12

    goto :goto_14

    .line 2991
    :catchall_12
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata_error:Z

    .line 2994
    :cond_14
    :goto_14
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    if-eqz v0, :cond_21

    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1
.end method

.method private static isKotlinIgnore(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 10

    const-string v0, "isEmpty"

    const-string v1, "getEndInclusive"

    .line 3096
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_64

    sget-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores_error:Z

    if-nez v2, :cond_64

    .line 3098
    :try_start_e
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v5, "kotlin.ranges.CharRange"

    .line 3099
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    aput-object v1, v7, v4

    aput-object v0, v7, v3

    .line 3100
    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "kotlin.ranges.IntRange"

    .line 3101
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/String;

    aput-object v1, v7, v4

    aput-object v0, v7, v3

    .line 3102
    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "kotlin.ranges.LongRange"

    .line 3103
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/String;

    aput-object v1, v7, v4

    aput-object v0, v7, v3

    .line 3104
    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "kotlin.ranges.ClosedFloatRange"

    .line 3105
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/String;

    aput-object v1, v7, v4

    aput-object v0, v7, v3

    .line 3106
    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "kotlin.ranges.ClosedDoubleRange"

    .line 3107
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/String;

    aput-object v1, v6, v4

    aput-object v0, v6, v3

    .line 3108
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3109
    sput-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;
    :try_end_61
    .catchall {:try_start_e .. :try_end_61} :catchall_62

    goto :goto_64

    .line 3111
    :catchall_62
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores_error:Z

    .line 3114
    :cond_64
    :goto_64
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    if-nez v0, :cond_69

    return v4

    .line 3117
    :cond_69
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-eqz p0, :cond_7a

    .line 3118
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_7a

    goto :goto_7b

    :cond_7a
    const/4 v3, 0x0

    :goto_7b
    return v3
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 829
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 830
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_1e

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_15

    goto :goto_1e

    :cond_15
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1d

    const/16 v3, 0x39

    if-le v2, v3, :cond_21

    :cond_1d
    return v0

    :cond_1e
    :goto_1e
    if-eqz v1, :cond_21

    return v0

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method public static isPath(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1675
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    if-nez v0, :cond_14

    :try_start_8
    const-string v0, "java.nio.file.Path"

    .line 1677
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_11

    goto :goto_14

    :catchall_11
    const/4 v0, 0x1

    .line 1679
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    .line 1682
    :cond_14
    :goto_14
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;

    if-eqz v0, :cond_1d

    .line 1683
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public static isProxy(Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 2722
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_48

    aget-object v3, p0, v2

    .line 2723
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "net.sf.cglib.proxy.Factory"

    .line 2724
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_47

    const-string v4, "org.springframework.cglib.proxy.Factory"

    .line 2725
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    goto :goto_47

    :cond_21
    const-string v4, "javassist.util.proxy.ProxyObject"

    .line 2728
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    const-string v4, "org.apache.ibatis.javassist.util.proxy.ProxyObject"

    .line 2729
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    goto :goto_47

    :cond_32
    const-string v4, "org.hibernate.proxy.HibernateProxy"

    .line 2733
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    return v5

    :cond_3b
    const-string v4, "org.springframework.context.annotation.ConfigurationClassEnhancer$EnhancedConfiguration"

    .line 2736
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    return v5

    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_47
    :goto_47
    return v5

    :cond_48
    return v1
.end method

.method public static isTransient(Ljava/lang/reflect/Method;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 2747
    :cond_4
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    const/4 v2, 0x1

    if-nez v1, :cond_18

    :try_start_9
    const-string v1, "java.beans.Transient"

    .line 2749
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClass:Ljava/lang/Class;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_16
    .catchall {:try_start_9 .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception p0

    .line 2753
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    .line 2754
    throw p0

    .line 2753
    :catch_16
    :goto_16
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->transientClassInited:Z

    .line 2756
    :cond_18
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->transientClass:Ljava/lang/Class;

    if-eqz v1, :cond_23

    .line 2757
    invoke-static {p0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_23

    const/4 v0, 0x1

    :cond_23
    return v0
.end method

.method public static isXmlField(Ljava/lang/Class;)Z
    .registers 6

    .line 126
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    const/4 v1, 0x1

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    if-nez v0, :cond_14

    :try_start_9
    const-string v0, "javax.xml.bind.annotation.XmlAccessorType"

    .line 128
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_12

    goto :goto_14

    .line 130
    :catchall_12
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    .line 134
    :cond_14
    :goto_14
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    return v2

    .line 138
    :cond_1a
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-nez p0, :cond_23

    return v2

    .line 143
    :cond_23
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->method_XmlAccessorType_value:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3a

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    if-nez v0, :cond_3a

    .line 145
    :try_start_2b
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessorType:Ljava/lang/Class;

    const-string v3, "value"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->method_XmlAccessorType_value:Ljava/lang/reflect/Method;
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_38

    goto :goto_3a

    .line 147
    :catchall_38
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    .line 151
    :cond_3a
    :goto_3a
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->method_XmlAccessorType_value:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3f

    return v2

    .line 156
    :cond_3f
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    const/4 v3, 0x0

    if-nez v0, :cond_4f

    .line 158
    :try_start_44
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->method_XmlAccessorType_value:Ljava/lang/reflect/Method;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_4d

    goto :goto_50

    .line 160
    :catchall_4d
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    :cond_4f
    move-object p0, v3

    :goto_50
    if-nez p0, :cond_53

    return v2

    .line 167
    :cond_53
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessType:Ljava/lang/Class;

    if-nez v0, :cond_78

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    if-nez v0, :cond_78

    :try_start_5b
    const-string v0, "javax.xml.bind.annotation.XmlAccessType"

    .line 169
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessType:Ljava/lang/Class;

    .line 170
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->class_XmlAccessType:Ljava/lang/Class;

    const-string v4, "FIELD"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->field_XmlAccessType_FIELD:Ljava/lang/reflect/Field;

    .line 171
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->field_XmlAccessType_FIELD:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->field_XmlAccessType_FIELD_VALUE:Ljava/lang/Object;
    :try_end_75
    .catchall {:try_start_5b .. :try_end_75} :catchall_76

    goto :goto_78

    .line 173
    :catchall_76
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->classXmlAccessorType_error:Z

    .line 177
    :cond_78
    :goto_78
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->field_XmlAccessType_FIELD_VALUE:Ljava/lang/Object;

    if-ne p0, v0, :cond_7d

    goto :goto_7e

    :cond_7d
    const/4 v1, 0x0

    :goto_7e
    return v1
.end method

.method public static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1671
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1693
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p0, :cond_a6

    .line 1697
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_a6

    .line 1701
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc6

    if-gt v0, v1, :cond_8f

    .line 1705
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1d

    return-object v0

    :cond_1d
    const/4 v1, 0x0

    .line 1710
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    const/4 v4, 0x1

    if-ne v2, v3, :cond_38

    .line 1711
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 1712
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_38
    const-string v1, "L"

    .line 1715
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1716
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v4

    invoke-virtual {p0, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1717
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_56
    if-eqz p1, :cond_68

    .line 1722
    :try_start_58
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz p2, :cond_63

    .line 1724
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_58 .. :try_end_63} :catchall_64

    :cond_63
    return-object v0

    :catchall_64
    move-exception v1

    .line 1729
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1733
    :cond_68
    :try_start_68
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_83

    if-eq v1, p1, :cond_83

    .line 1735
    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_78
    .catchall {:try_start_68 .. :try_end_78} :catchall_83

    if-eqz p2, :cond_82

    .line 1737
    :try_start_7a
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7f
    .catchall {:try_start_7a .. :try_end_7f} :catchall_80

    goto :goto_82

    :catchall_80
    move-object v0, p1

    goto :goto_83

    :cond_82
    :goto_82
    return-object p1

    .line 1745
    :catchall_83
    :cond_83
    :goto_83
    :try_start_83
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz p2, :cond_8e

    .line 1747
    sget-object p1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8e
    .catchall {:try_start_83 .. :try_end_8e} :catchall_8e

    :catchall_8e
    :cond_8e
    return-object v0

    .line 1702
    :cond_8f
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "illegal className : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a6
    :goto_a6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static longExtractValue(Ljava/lang/Number;)J
    .registers 3

    .line 621
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_b

    .line 622
    check-cast p0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v0

    return-wide v0

    .line 625
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static longValue(Ljava/math/BigDecimal;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 944
    :cond_5
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    const/16 v1, -0x64

    if-lt v0, v1, :cond_16

    const/16 v1, 0x64

    if-gt v0, v1, :cond_16

    .line 946
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 949
    :cond_16
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v0

    return-wide v0
.end method

.method private static makeParameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/ParameterizedType;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .line 2575
    array-length v0, p1

    .line 2576
    new-array v1, v0, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_11

    .line 2578
    aget-object v3, p1, v2

    invoke-static {v3, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getActualType(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2580
    :cond_11
    new-instance p1, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    const/4 p2, 0x0

    invoke-direct {p1, v1, p2, p0}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object p1
.end method

.method static num(CC)I
    .registers 4

    const/16 v0, 0x30

    if-lt p0, v0, :cond_12

    const/16 v1, 0x39

    if-gt p0, v1, :cond_12

    if-lt p1, v0, :cond_12

    if-gt p1, v1, :cond_12

    sub-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0xa

    sub-int/2addr p1, v0

    add-int/2addr p0, p1

    return p0

    :cond_12
    const/4 p0, -0x1

    return p0
.end method

.method static num(CCCC)I
    .registers 6

    const/16 v0, 0x30

    if-lt p0, v0, :cond_22

    const/16 v1, 0x39

    if-gt p0, v1, :cond_22

    if-lt p1, v0, :cond_22

    if-gt p1, v1, :cond_22

    if-lt p2, v0, :cond_22

    if-gt p2, v1, :cond_22

    if-lt p3, v0, :cond_22

    if-gt p3, v1, :cond_22

    sub-int/2addr p0, v0

    mul-int/lit16 p0, p0, 0x3e8

    sub-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x64

    add-int/2addr p0, p1

    sub-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0xa

    add-int/2addr p0, p2

    sub-int/2addr p3, v0

    add-int/2addr p0, p3

    return p0

    :cond_22
    const/4 p0, -0x1

    return p0
.end method

.method static num(CCCCCCCCC)I
    .registers 11

    const/16 v0, 0x30

    if-lt p0, v0, :cond_56

    const/16 v1, 0x39

    if-gt p0, v1, :cond_56

    if-lt p1, v0, :cond_56

    if-gt p1, v1, :cond_56

    if-lt p2, v0, :cond_56

    if-gt p2, v1, :cond_56

    if-lt p3, v0, :cond_56

    if-gt p3, v1, :cond_56

    if-lt p4, v0, :cond_56

    if-gt p4, v1, :cond_56

    if-lt p5, v0, :cond_56

    if-gt p5, v1, :cond_56

    if-lt p6, v0, :cond_56

    if-gt p6, v1, :cond_56

    if-lt p7, v0, :cond_56

    if-gt p7, v1, :cond_56

    if-lt p8, v0, :cond_56

    if-gt p8, v1, :cond_56

    sub-int/2addr p0, v0

    const v1, 0x5f5e100

    mul-int p0, p0, v1

    sub-int/2addr p1, v0

    const v1, 0x989680

    mul-int p1, p1, v1

    add-int/2addr p0, p1

    sub-int/2addr p2, v0

    const p1, 0xf4240

    mul-int p2, p2, p1

    add-int/2addr p0, p2

    sub-int/2addr p3, v0

    const p1, 0x186a0

    mul-int p3, p3, p1

    add-int/2addr p0, p3

    sub-int/2addr p4, v0

    mul-int/lit16 p4, p4, 0x2710

    add-int/2addr p0, p4

    sub-int/2addr p5, v0

    mul-int/lit16 p5, p5, 0x3e8

    add-int/2addr p0, p5

    sub-int/2addr p6, v0

    mul-int/lit8 p6, p6, 0x64

    add-int/2addr p0, p6

    sub-int/2addr p7, v0

    mul-int/lit8 p7, p7, 0xa

    add-int/2addr p0, p7

    sub-int/2addr p8, v0

    add-int/2addr p0, p8

    return p0

    :cond_56
    const/4 p0, -0x1

    return p0
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .registers 10

    .line 2822
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_d

    .line 2824
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_d
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_12
    if-ge v3, v0, :cond_48

    .line 2832
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    const/4 v8, 0x1

    if-ne v6, v7, :cond_21

    if-nez v3, :cond_21

    const/4 v4, 0x1

    goto :goto_40

    :cond_21
    const/16 v7, 0x2e

    if-ne v6, v7, :cond_30

    if-eqz v5, :cond_2c

    .line 2840
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_2c
    sub-int v5, v0, v3

    sub-int/2addr v5, v8

    goto :goto_40

    :cond_30
    const/16 v7, 0x30

    if-lt v6, v7, :cond_43

    const/16 v7, 0x39

    if-gt v6, v7, :cond_43

    add-int/lit8 v6, v6, -0x30

    const-wide/16 v7, 0xa

    mul-long v1, v1, v7

    int-to-long v6, v6

    add-long/2addr v1, v6

    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 2850
    :cond_43
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_48
    if-eqz v4, :cond_4b

    neg-long v1, v1

    :cond_4b
    packed-switch v5, :pswitch_data_aa

    .line 2881
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :pswitch_53
    long-to-double v0, v1

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    .line 2878
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    :goto_5c
    div-double/2addr v0, v2

    return-wide v0

    :pswitch_5e
    long-to-double v0, v1

    const-wide v2, 0x4197d78400000000L    # 1.0E8

    .line 2876
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5c

    :pswitch_68
    long-to-double v0, v1

    const-wide v2, 0x416312d000000000L    # 1.0E7

    .line 2874
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5c

    :pswitch_72
    long-to-double v0, v1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 2872
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5c

    :pswitch_7c
    long-to-double v0, v1

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    .line 2870
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5c

    :pswitch_86
    long-to-double v0, v1

    const-wide v2, 0x40c3880000000000L    # 10000.0

    .line 2868
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5c

    :pswitch_90
    long-to-double v0, v1

    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 2866
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5c

    :pswitch_9a
    long-to-double v0, v1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 2864
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5c

    :pswitch_a1
    long-to-double v0, v1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 2862
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_5c

    :pswitch_a8
    long-to-double v0, v1

    return-wide v0

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_a8
        :pswitch_a1
        :pswitch_9a
        :pswitch_90
        :pswitch_86
        :pswitch_7c
        :pswitch_72
        :pswitch_68
        :pswitch_5e
        :pswitch_53
    .end packed-switch
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .registers 10

    .line 2885
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_d

    .line 2887
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_d
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_12
    if-ge v3, v0, :cond_48

    .line 2895
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    const/4 v8, 0x1

    if-ne v6, v7, :cond_21

    if-nez v3, :cond_21

    const/4 v4, 0x1

    goto :goto_40

    :cond_21
    const/16 v7, 0x2e

    if-ne v6, v7, :cond_30

    if-eqz v5, :cond_2c

    .line 2903
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_2c
    sub-int v5, v0, v3

    sub-int/2addr v5, v8

    goto :goto_40

    :cond_30
    const/16 v7, 0x30

    if-lt v6, v7, :cond_43

    const/16 v7, 0x39

    if-gt v6, v7, :cond_43

    add-int/lit8 v6, v6, -0x30

    const-wide/16 v7, 0xa

    mul-long v1, v1, v7

    int-to-long v6, v6

    add-long/2addr v1, v6

    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 2913
    :cond_43
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_48
    if-eqz v4, :cond_4b

    neg-long v1, v1

    :cond_4b
    packed-switch v5, :pswitch_data_80

    .line 2944
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    :pswitch_53
    long-to-float p0, v1

    const v0, 0x4e6e6b28    # 1.0E9f

    :goto_57
    div-float/2addr p0, v0

    return p0

    :pswitch_59
    long-to-float p0, v1

    const v0, 0x4cbebc20    # 1.0E8f

    goto :goto_57

    :pswitch_5e
    long-to-float p0, v1

    const v0, 0x4b189680    # 1.0E7f

    goto :goto_57

    :pswitch_63
    long-to-float p0, v1

    const v0, 0x49742400    # 1000000.0f

    goto :goto_57

    :pswitch_68
    long-to-float p0, v1

    const v0, 0x47c35000    # 100000.0f

    goto :goto_57

    :pswitch_6d
    long-to-float p0, v1

    const v0, 0x461c4000    # 10000.0f

    goto :goto_57

    :pswitch_72
    long-to-float p0, v1

    const/high16 v0, 0x447a0000    # 1000.0f

    goto :goto_57

    :pswitch_76
    long-to-float p0, v1

    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_57

    :pswitch_7a
    long-to-float p0, v1

    const/high16 v0, 0x41200000    # 10.0f

    goto :goto_57

    :pswitch_7e
    long-to-float p0, v1

    return p0

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_6d
        :pswitch_68
        :pswitch_63
        :pswitch_5e
        :pswitch_59
        :pswitch_53
    .end packed-switch
.end method

.method static setAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .registers 2

    .line 2503
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    if-nez v0, :cond_5

    return-void

    .line 2506
    :cond_5
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x1

    .line 2510
    :try_start_d
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_10
    .catch Ljava/security/AccessControlException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_14

    :catch_11
    const/4 p0, 0x0

    .line 2512
    sput-boolean p0, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    :goto_14
    return-void
.end method

.method public static shortValue(Ljava/math/BigDecimal;)S
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 918
    :cond_4
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    const/16 v1, -0x64

    if-lt v0, v1, :cond_15

    const/16 v1, 0x64

    if-gt v0, v1, :cond_15

    .line 920
    invoke-virtual {p0}, Ljava/math/BigDecimal;->shortValue()S

    move-result p0

    return p0

    .line 923
    :cond_15
    invoke-virtual {p0}, Ljava/math/BigDecimal;->shortValueExact()S

    move-result p0

    return p0
.end method

.method public static toLocale(Ljava/lang/String;)Ljava/util/Locale;
    .registers 5

    const-string v0, "_"

    .line 1242
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1243
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    .line 1244
    new-instance v0, Ljava/util/Locale;

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1246
    :cond_13
    array-length v0, p0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_21

    .line 1247
    new-instance v0, Ljava/util/Locale;

    aget-object v1, p0, v1

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1249
    :cond_21
    new-instance v0, Ljava/util/Locale;

    aget-object v1, p0, v1

    aget-object v2, p0, v2

    aget-object p0, p0, v3

    invoke-direct {v0, v1, v2, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static unwrapOptional(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 4

    .line 2394
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :try_start_5
    const-string v1, "java.util.Optional"

    .line 2396
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClass:Ljava/lang/Class;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_12
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    goto :goto_12

    :catchall_e
    move-exception p0

    .line 2400
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    .line 2401
    throw p0

    .line 2400
    :catch_12
    :goto_12
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    .line 2403
    :cond_14
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2a

    .line 2404
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 2405
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClass:Ljava/lang/Class;

    if-ne v1, v2, :cond_2a

    .line 2406
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    :cond_2a
    return-object p0
.end method
