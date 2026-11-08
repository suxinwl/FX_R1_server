.class public abstract Lcom/google/android/exoplayer2/Timeline;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/Timeline$Period;,
        Lcom/google/android/exoplayer2/Timeline$Window;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 512
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    return-void
.end method


# virtual methods
.method public getFirstWindowIndex(Z)I
    .registers 3
    .param p1, "shuffleModeEnabled"    # Z

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public abstract getIndexOfPeriod(Ljava/lang/Object;)I
.end method

.method public getLastWindowIndex(Z)I
    .registers 3
    .param p1, "shuffleModeEnabled"    # Z

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_7
.end method

.method public final getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I
    .registers 10
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p3, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p4, "repeatMode"    # I
    .param p5, "shuffleModeEnabled"    # Z

    .prologue
    const/4 v2, -0x1

    .line 685
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v3

    iget v1, v3, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 686
    .local v1, "windowIndex":I
    invoke-virtual {p0, v1, p3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-ne v3, p1, :cond_1d

    .line 687
    invoke-virtual {p0, v1, p4, p5}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result v0

    .line 688
    .local v0, "nextWindowIndex":I
    if-ne v0, v2, :cond_16

    .line 693
    .end local v0    # "nextWindowIndex":I
    :goto_15
    return v2

    .line 691
    .restart local v0    # "nextWindowIndex":I
    :cond_16
    invoke-virtual {p0, v0, p3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    goto :goto_15

    .line 693
    .end local v0    # "nextWindowIndex":I
    :cond_1d
    add-int/lit8 v2, p1, 0x1

    goto :goto_15
.end method

.method public getNextWindowIndex(IIZ)I
    .registers 5
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .prologue
    .line 565
    packed-switch p2, :pswitch_data_24

    .line 575
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 567
    :pswitch_9
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result v0

    if-ne p1, v0, :cond_11

    const/4 v0, -0x1

    .line 573
    :goto_10
    return v0

    .line 567
    :cond_11
    add-int/lit8 v0, p1, 0x1

    goto :goto_10

    :pswitch_14
    move v0, p1

    .line 570
    goto :goto_10

    .line 572
    :pswitch_16
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result v0

    if-ne p1, v0, :cond_21

    .line 573
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    goto :goto_10

    :cond_21
    add-int/lit8 v0, p1, 0x1

    goto :goto_10

    .line 565
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_9
        :pswitch_14
        :pswitch_16
    .end packed-switch
.end method

.method public final getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 4
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;

    .prologue
    .line 722
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
.end method

.method public abstract getPeriodCount()I
.end method

.method public final getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;
    .registers 14
    .param p1, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p3, "windowIndex"    # I
    .param p4, "windowPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline$Window;",
            "Lcom/google/android/exoplayer2/Timeline$Period;",
            "IJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 731
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final getPeriodPosition(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJJ)Landroid/util/Pair;
    .registers 20
    .param p1, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p3, "windowIndex"    # I
    .param p4, "windowPositionUs"    # J
    .param p6, "defaultPositionProjectionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline$Window;",
            "Lcom/google/android/exoplayer2/Timeline$Period;",
            "IJJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 750
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    invoke-static {p3, v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 751
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p3

    move-object v2, p1

    move-wide/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 752
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p4, v0

    if-nez v0, :cond_29

    .line 753
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide p4

    .line 754
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p4, v0

    if-nez v0, :cond_29

    .line 755
    const/4 v0, 0x0

    .line 766
    :goto_28
    return-object v0

    .line 758
    :cond_29
    iget v8, p1, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 759
    .local v8, "periodIndex":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline$Window;->getPositionInFirstPeriodUs()J

    move-result-wide v0

    add-long v10, v0, p4

    .line 760
    .local v10, "periodPositionUs":J
    invoke-virtual {p0, v8, p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v6

    .line 761
    .local v6, "periodDurationUs":J
    :goto_39
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v6, v0

    if-eqz v0, :cond_56

    cmp-long v0, v10, v6

    if-ltz v0, :cond_56

    iget v0, p1, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-ge v8, v0, :cond_56

    .line 763
    sub-long/2addr v10, v6

    .line 764
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8, p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v6

    goto :goto_39

    .line 766
    :cond_56
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_28
.end method

.method public getPreviousWindowIndex(IIZ)I
    .registers 5
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .prologue
    .line 590
    packed-switch p2, :pswitch_data_24

    .line 600
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 592
    :pswitch_9
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    if-ne p1, v0, :cond_11

    const/4 v0, -0x1

    .line 598
    :goto_10
    return v0

    .line 592
    :cond_11
    add-int/lit8 v0, p1, -0x1

    goto :goto_10

    :pswitch_14
    move v0, p1

    .line 595
    goto :goto_10

    .line 597
    :pswitch_16
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    if-ne p1, v0, :cond_21

    .line 598
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result v0

    goto :goto_10

    :cond_21
    add-int/lit8 v0, p1, -0x1

    goto :goto_10

    .line 590
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_9
        :pswitch_14
        :pswitch_16
    .end packed-switch
.end method

.method public final getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;
    .registers 4
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;

    .prologue
    .line 637
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;Z)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    return-object v0
.end method

.method public final getWindow(ILcom/google/android/exoplayer2/Timeline$Window;Z)Lcom/google/android/exoplayer2/Timeline$Window;
    .registers 10
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p3, "setIds"    # Z

    .prologue
    .line 650
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    return-object v0
.end method

.method public abstract getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;
.end method

.method public abstract getWindowCount()I
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isLastPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)Z
    .registers 8
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p3, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p4, "repeatMode"    # I
    .param p5, "shuffleModeEnabled"    # Z

    .prologue
    .line 709
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplayer2/Timeline$Period;Lcom/google/android/exoplayer2/Timeline$Window;IZ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
