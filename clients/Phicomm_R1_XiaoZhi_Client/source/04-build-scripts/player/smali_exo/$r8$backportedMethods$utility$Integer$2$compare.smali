.class public synthetic L$r8$backportedMethods$utility$Integer$2$compare;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic compare(II)I
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    goto :goto_9

    :cond_4
    if-ge p0, p1, :cond_8

    const/4 p0, -0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method
