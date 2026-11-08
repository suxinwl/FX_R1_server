.class public final Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PpsData"
.end annotation


# instance fields
.field public final bottomFieldPicOrderInFramePresentFlag:Z

.field public final picParameterSetId:I

.field public final seqParameterSetId:I


# direct methods
.method public constructor <init>(IIZ)V
    .registers 4

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p1, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;->picParameterSetId:I

    .line 144
    iput p2, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;->seqParameterSetId:I

    .line 145
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    return-void
.end method
