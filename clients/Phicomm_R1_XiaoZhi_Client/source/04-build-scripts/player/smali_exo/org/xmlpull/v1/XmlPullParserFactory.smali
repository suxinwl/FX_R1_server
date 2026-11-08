.class public Lorg/xmlpull/v1/XmlPullParserFactory;
.super Ljava/lang/Object;


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "org.xmlpull.v1.XmlPullParserFactory"

.field private static final RESOURCE_NAME:Ljava/lang/String; = "/META-INF/services/org.xmlpull.v1.XmlPullParserFactory"

.field static final referenceContextClass:Ljava/lang/Class;


# instance fields
.field protected classNamesLocation:Ljava/lang/String;

.field protected features:Ljava/util/Hashtable;

.field protected parserClasses:Ljava/util/Vector;

.field protected serializerClasses:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-direct {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;-><init>()V

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/xmlpull/v1/XmlPullParserFactory;->referenceContextClass:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    return-void
.end method

.method public static newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 259
    invoke-static {v0, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    if-nez p1, :cond_4

    .line 269
    sget-object p1, Lorg/xmlpull/v1/XmlPullParserFactory;->referenceContextClass:Ljava/lang/Class;

    :cond_4
    const-string v0, "\'"

    const/4 v1, 0x0

    if-eqz p0, :cond_2d

    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "DEFAULT"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_2d

    .line 298
    :cond_18
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "parameter classNames to newInstance() that contained \'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5b

    :cond_2d
    :goto_2d
    :try_start_2d
    const-string p0, "/META-INF/services/org.xmlpull.v1.XmlPullParserFactory"

    .line 276
    invoke-virtual {p1, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_df

    .line 281
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 284
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-gez v2, :cond_d5

    .line 289
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 291
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_47} :catch_e7

    .line 296
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "resource /META-INF/services/org.xmlpull.v1.XmlPullParserFactory that contained \'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 303
    :goto_5b
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 304
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const/4 v3, 0x0

    move-object v5, v1

    const/4 v4, 0x0

    .line 307
    :goto_68
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v4, v6, :cond_7c

    if-nez v5, :cond_75

    .line 347
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-direct {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;-><init>()V

    .line 349
    :cond_75
    iput-object v0, v5, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    .line 350
    iput-object v2, v5, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    .line 351
    iput-object p1, v5, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    return-object v5

    :cond_7c
    const/16 v6, 0x2c

    .line 308
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_89

    .line 310
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 311
    :cond_89
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 317
    :try_start_8d
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_91} :catch_96

    .line 319
    :try_start_91
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_95} :catch_97

    goto :goto_98

    :catch_96
    move-object v7, v1

    :catch_97
    move-object v8, v1

    :goto_98
    if-eqz v7, :cond_d2

    .line 325
    instance-of v9, v8, Lorg/xmlpull/v1/XmlPullParser;

    const/4 v10, 0x1

    if-eqz v9, :cond_a4

    .line 326
    invoke-virtual {v0, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v9, 0x1

    goto :goto_a5

    :cond_a4
    const/4 v9, 0x0

    .line 329
    :goto_a5
    instance-of v11, v8, Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v11, :cond_ad

    .line 330
    invoke-virtual {v2, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v9, 0x1

    .line 333
    :cond_ad
    instance-of v7, v8, Lorg/xmlpull/v1/XmlPullParserFactory;

    if-eqz v7, :cond_b7

    if-nez v5, :cond_b8

    .line 335
    move-object v5, v8

    check-cast v5, Lorg/xmlpull/v1/XmlPullParserFactory;

    goto :goto_b8

    :cond_b7
    move v10, v9

    :cond_b8
    :goto_b8
    if-eqz v10, :cond_bb

    goto :goto_d2

    .line 340
    :cond_bb
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "incompatible class: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d2
    :goto_d2
    add-int/lit8 v4, v6, 0x1

    goto :goto_68

    :cond_d5
    const/16 v3, 0x20

    if-le v2, v3, :cond_3a

    int-to-char v2, v2

    .line 287
    :try_start_da
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3a

    .line 278
    :cond_df
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "resource not found: /META-INF/services/org.xmlpull.v1.XmlPullParserFactory make sure that parser implementing XmlPull API is available"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_e7} :catch_e7

    :catch_e7
    move-exception p0

    .line 294
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {p1, v1, v1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_ef

    :goto_ee
    throw p1

    :goto_ef
    goto :goto_ee
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .registers 3

    .line 105
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_f

    .line 106
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method public isNamespaceAware()Z
    .registers 2

    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 132
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValidating()Z
    .registers 2

    const-string v0, "http://xmlpull.org/v1/doc/features.html#validation"

    .line 158
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    if-eqz v0, :cond_a6

    .line 175
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_8d

    .line 178
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 180
    :goto_10
    iget-object v2, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_76

    .line 181
    iget-object v2, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->parserClasses:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 183
    :try_start_20
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xmlpull/v1/XmlPullParser;

    .line 188
    iget-object v4, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :cond_2c
    :goto_2c
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_33

    return-object v3

    .line 189
    :cond_33
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 190
    iget-object v6, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_2c

    .line 191
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2c

    const/4 v6, 0x1

    .line 192
    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_4d} :catch_4e

    goto :goto_2c

    :catch_4e
    move-exception v3

    .line 198
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "; "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 202
    :cond_76
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "could not create parser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_8d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No valid parser classes found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_a6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Factory initialization was incomplete - has not tried "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_c0

    :goto_bf
    throw v0

    :goto_c0
    goto :goto_bf
.end method

.method public newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    if-eqz v0, :cond_7f

    .line 222
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_66

    .line 227
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 229
    :goto_10
    iget-object v2, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_4f

    .line 230
    iget-object v2, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->serializerClasses:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 232
    :try_start_20
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xmlpull/v1/XmlSerializer;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_26} :catch_27

    return-object v3

    :catch_27
    move-exception v3

    .line 244
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "; "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 248
    :cond_4f
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "could not create serializer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_66
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No valid serializer classes found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_7f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Factory initialization incomplete - has not tried "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->classNamesLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_99

    :goto_98
    throw v0

    :goto_99
    goto :goto_98
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setNamespaceAware(Z)V
    .registers 4

    .line 119
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-string p1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setValidating(Z)V
    .registers 4

    .line 146
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserFactory;->features:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-string p1, "http://xmlpull.org/v1/doc/features.html#validation"

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
