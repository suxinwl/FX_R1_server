.class final Lorg/xutils/image/ReusableBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "ReusableBitmapDrawable.java"

# interfaces
.implements Lorg/xutils/image/ReusableDrawable;


# instance fields
.field private key:Lorg/xutils/image/MemCacheKey;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getMemCacheKey()Lorg/xutils/image/MemCacheKey;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lorg/xutils/image/ReusableBitmapDrawable;->key:Lorg/xutils/image/MemCacheKey;

    return-object v0
.end method

.method public setMemCacheKey(Lorg/xutils/image/MemCacheKey;)V
    .registers 2
    .param p1, "key"    # Lorg/xutils/image/MemCacheKey;

    .prologue
    .line 22
    iput-object p1, p0, Lorg/xutils/image/ReusableBitmapDrawable;->key:Lorg/xutils/image/MemCacheKey;

    .line 23
    return-void
.end method
