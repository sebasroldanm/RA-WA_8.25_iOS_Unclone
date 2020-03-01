.class public Lcom/nthoell/cover/Transition;
.super Ljava/lang/Object;
.source "Transition.java"


# instance fields
.field private mCenterXDiff:F

.field private mCenterYDiff:F

.field private final mCurrentRect:Landroid/graphics/RectF;

.field private mDstRect:Landroid/graphics/RectF;

.field private mDuration:J

.field private mHeightDiff:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mSrcRect:Landroid/graphics/RectF;

.field private mWidthDiff:F


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;JLandroid/view/animation/Interpolator;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nthoell/cover/Transition;->mCurrentRect:Landroid/graphics/RectF;

    invoke-static {p1, p2}, Lcom/nthoell/cover/MathUtils;->haveSameAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nthoell/cover/IncompatibleRatioException;

    invoke-direct {v0}, Lcom/nthoell/cover/IncompatibleRatioException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/nthoell/cover/Transition;->mSrcRect:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/nthoell/cover/Transition;->mDstRect:Landroid/graphics/RectF;

    iput-wide p3, p0, Lcom/nthoell/cover/Transition;->mDuration:J

    iput-object p5, p0, Lcom/nthoell/cover/Transition;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/nthoell/cover/Transition;->mWidthDiff:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/nthoell/cover/Transition;->mHeightDiff:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/nthoell/cover/Transition;->mCenterXDiff:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/nthoell/cover/Transition;->mCenterYDiff:F

    return-void
.end method


# virtual methods
.method public getDestinyRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/nthoell/cover/Transition;->mDstRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/nthoell/cover/Transition;->mDuration:J

    return-wide v0
.end method

.method public getInterpolatedRect(J)Landroid/graphics/RectF;
    .locals 17

    move-wide/from16 v0, p1

    long-to-float v13, v0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/nthoell/cover/Transition;->mDuration:J

    long-to-float v14, v14

    div-float v7, v13, v14

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v7, v13}, Ljava/lang/Math;->min(FF)F

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nthoell/cover/Transition;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v13, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nthoell/cover/Transition;->mSrcRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/nthoell/cover/Transition;->mWidthDiff:F

    mul-float/2addr v14, v8

    add-float v6, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nthoell/cover/Transition;->mSrcRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/nthoell/cover/Transition;->mHeightDiff:F

    mul-float/2addr v14, v8

    add-float v5, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nthoell/cover/Transition;->mSrcRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/nthoell/cover/Transition;->mCenterXDiff:F

    mul-float/2addr v14, v8

    add-float v3, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nthoell/cover/Transition;->mSrcRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/nthoell/cover/Transition;->mCenterYDiff:F

    mul-float/2addr v14, v8

    add-float v4, v13, v14

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v6, v13

    sub-float v10, v3, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v5, v13

    sub-float v12, v4, v13

    add-float v11, v10, v6

    add-float v2, v12, v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nthoell/cover/Transition;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v13, v10, v12, v11, v2}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nthoell/cover/Transition;->mCurrentRect:Landroid/graphics/RectF;

    return-object v13
.end method

.method public getSourceRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/nthoell/cover/Transition;->mSrcRect:Landroid/graphics/RectF;

    return-object v0
.end method
