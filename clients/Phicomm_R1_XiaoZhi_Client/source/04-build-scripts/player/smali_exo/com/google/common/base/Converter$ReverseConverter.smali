.class final Lcom/google/common/base/Converter$ReverseConverter;
.super Lcom/google/common/base/Converter;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReverseConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/base/Converter<",
        "TB;TA;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final original:Lcom/google/common/base/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Converter<",
            "TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/base/Converter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Converter<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 244
    invoke-direct {p0}, Lcom/google/common/base/Converter;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    return-void
.end method


# virtual methods
.method correctedDoBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Converter;->correctedDoForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method correctedDoForward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Converter;->correctedDoBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .line 262
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method protected doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .line 257
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 284
    instance-of v0, p1, Lcom/google/common/base/Converter$ReverseConverter;

    if-eqz v0, :cond_f

    .line 285
    check-cast p1, Lcom/google/common/base/Converter$ReverseConverter;

    .line 286
    iget-object v0, p0, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    iget-object p1, p1, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Converter;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 293
    iget-object v0, p0, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public reverse()Lcom/google/common/base/Converter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter<",
            "TA;TB;>;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/base/Converter$ReverseConverter;->original:Lcom/google/common/base/Converter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".reverse()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
