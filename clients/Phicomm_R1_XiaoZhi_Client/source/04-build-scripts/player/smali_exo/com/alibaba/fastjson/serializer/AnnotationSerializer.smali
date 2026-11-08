.class public Lcom/alibaba/fastjson/serializer/AnnotationSerializer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/AnnotationSerializer;

.field private static volatile sun_AnnotationType:Ljava/lang/Class;

.field private static volatile sun_AnnotationType_error:Z

.field private static volatile sun_AnnotationType_getInstance:Ljava/lang/reflect/Method;

.field private static volatile sun_AnnotationType_members:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->instance:Lcom/alibaba/fastjson/serializer/AnnotationSerializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    .line 27
    invoke-virtual {p3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p3

    .line 28
    array-length p4, p3

    const/4 p5, 0x1

    if-ne p4, p5, :cond_ed

    const/4 p4, 0x0

    aget-object v0, p3, p4

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 29
    aget-object p3, p3, p4

    .line 31
    sget-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType:Ljava/lang/Class;

    const-string v1, "not support Type Annotation."

    if-nez v0, :cond_33

    sget-boolean v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    if-nez v0, :cond_33

    :try_start_21
    const-string v0, "sun.reflect.annotation.AnnotationType"

    .line 33
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType:Ljava/lang/Class;
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_2a

    goto :goto_33

    :catchall_2a
    move-exception p1

    .line 35
    sput-boolean p5, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    .line 36
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p2, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 40
    :cond_33
    :goto_33
    sget-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType:Ljava/lang/Class;

    if-eqz v0, :cond_e7

    .line 44
    sget-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_getInstance:Ljava/lang/reflect/Method;

    if-nez v0, :cond_59

    sget-boolean v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    if-nez v0, :cond_59

    .line 46
    :try_start_3f
    sget-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType:Ljava/lang/Class;

    const-string v2, "getInstance"

    new-array v3, p5, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Class;

    aput-object v4, v3, p4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_getInstance:Ljava/lang/reflect/Method;
    :try_end_4f
    .catchall {:try_start_3f .. :try_end_4f} :catchall_50

    goto :goto_59

    :catchall_50
    move-exception p1

    .line 48
    sput-boolean p5, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    .line 49
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p2, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 53
    :cond_59
    :goto_59
    sget-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_members:Ljava/lang/reflect/Method;

    if-nez v0, :cond_77

    sget-boolean v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    if-nez v0, :cond_77

    .line 55
    :try_start_61
    sget-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType:Ljava/lang/Class;

    const-string v2, "members"

    new-array v3, p4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_members:Ljava/lang/reflect/Method;
    :try_end_6d
    .catchall {:try_start_61 .. :try_end_6d} :catchall_6e

    goto :goto_77

    :catchall_6e
    move-exception p1

    .line 57
    sput-boolean p5, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    .line 58
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p2, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 62
    :cond_77
    :goto_77
    sget-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_getInstance:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e1

    sget-boolean v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    if-nez v0, :cond_e1

    .line 68
    :try_start_7f
    sget-object v0, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_getInstance:Ljava/lang/reflect/Method;

    new-array v2, p5, [Ljava/lang/Object;

    aput-object p3, v2, p4

    const/4 p3, 0x0

    invoke-virtual {v0, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8a
    .catchall {:try_start_7f .. :try_end_8a} :catchall_d8

    .line 76
    :try_start_8a
    sget-object v2, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_members:Ljava/lang/reflect/Method;

    new-array v3, p4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_94
    .catchall {:try_start_8a .. :try_end_94} :catchall_cf

    .line 82
    new-instance p5, Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {p5, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(I)V

    .line 83
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 86
    :goto_a5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 89
    :try_start_b1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    new-array v3, p4, [Ljava/lang/Object;

    invoke-virtual {v2, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_bd
    .catch Ljava/lang/IllegalAccessException; {:try_start_b1 .. :try_end_bd} :catch_bd
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b1 .. :try_end_bd} :catch_bd

    .line 95
    :catch_bd
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p5, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a5

    .line 97
    :cond_cb
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    return-void

    :catchall_cf
    move-exception p1

    .line 78
    sput-boolean p5, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    .line 79
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p2, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_d8
    move-exception p1

    .line 70
    sput-boolean p5, Lcom/alibaba/fastjson/serializer/AnnotationSerializer;->sun_AnnotationType_error:Z

    .line 71
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p2, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 63
    :cond_e1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_e7
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ed
    return-void
.end method
