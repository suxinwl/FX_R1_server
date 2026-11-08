.class public synthetic L$r8$backportedMethods$utility$String$2$joinArray;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    if-lez v1, :cond_1f

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_11
    array-length v2, p1

    if-ge v1, v2, :cond_1f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "delimiter"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_2d

    :goto_2c
    throw p0

    :goto_2d
    goto :goto_2c
.end method
