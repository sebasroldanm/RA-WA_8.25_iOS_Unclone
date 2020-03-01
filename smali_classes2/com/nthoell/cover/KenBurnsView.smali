.class public Lcom/nthoell/cover/KenBurnsView;
.super Landroid/widget/ImageView;
.source "KenBurnsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nthoell/cover/KenBurnsView$TransitionListener;
    }
.end annotation


# static fields
.field private static final FRAME_DELAY:J = 0x10L


# instance fields
.field coverImage:Landroid/widget/ImageView;

.field coverUri:Ljava/lang/String;

.field private mCurrentTrans:Lcom/nthoell/cover/Transition;

.field private mDrawableRect:Landroid/graphics/RectF;

.field private mElapsedTime:J

.field private mInitialized:Z

.field private mLastFrameTime:J

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mPaused:Z

.field private mTransGen:Lcom/nthoell/cover/TransitionGenerator;

.field private mTransitionListener:Lcom/nthoell/cover/KenBurnsView$TransitionListener;

.field private final mViewportRect:Landroid/graphics/RectF;

.field uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nthoell/cover/KenBurnsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/nthoell/cover/KenBurnsView;->setCoverImage(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nthoell/cover/KenBurnsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, p1}, Lcom/nthoell/cover/KenBurnsView;->setCoverImage(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/nthoell/cover/KenBurnsView;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Lcom/nthoell/cover/RandomTransitionGenerator;

    invoke-direct {v0}, Lcom/nthoell/cover/RandomTransitionGenerator;-><init>()V

    iput-object v0, p0, Lcom/nthoell/cover/KenBurnsView;->mTransGen:Lcom/nthoell/cover/TransitionGenerator;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nthoell/cover/KenBurnsView;->mViewportRect:Landroid/graphics/RectF;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nthoell/cover/KenBurnsView;->mInitialized:Z

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0, p1}, Lcom/nthoell/cover/KenBurnsView;->setCoverImage(Landroid/content/Context;)V

    return-void
.end method

.method private fireTransitionEnd(Lcom/nthoell/cover/Transition;)V
    .locals 1

    iget-object v0, p0, Lcom/nthoell/cover/KenBurnsView;->mTransitionListener:Lcom/nthoell/cover/KenBurnsView$TransitionListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nthoell/cover/KenBurnsView;->mTransitionListener:Lcom/nthoell/cover/KenBurnsView$TransitionListener;

    invoke-interface {v0, p1}, Lcom/nthoell/cover/KenBurnsView$TransitionListener;->onTransitionEnd(Lcom/nthoell/cover/Transition;)V

    :cond_0
    return-void
.end method

.method private fireTransitionStart(Lcom/nthoell/cover/Transition;)V
    .locals 1

    iget-object v0, p0, Lcom/nthoell/cover/KenBurnsView;->mTransitionListener:Lcom/nthoell/cover/KenBurnsView$TransitionListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nthoell/cover/KenBurnsView;->mTransitionListener:Lcom/nthoell/cover/KenBurnsView$TransitionListener;

    invoke-interface {v0, p1}, Lcom/nthoell/cover/KenBurnsView$TransitionListener;->onTransitionStart(Lcom/nthoell/cover/Transition;)V

    :cond_0
    return-void
.end method

.method private handleImageChange()V
    .locals 1

    invoke-direct {p0}, Lcom/nthoell/cover/KenBurnsView;->updateDrawableBounds()V

    iget-boolean v0, p0, Lcom/nthoell/cover/KenBurnsView;->mInitialized:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nthoell/cover/KenBurnsView;->startNewTransition()V

    :cond_0
    return-void
.end method

.method private hasBounds()Z
    .locals 1

    iget-object v0, p0, Lcom/nthoell/cover/KenBurnsView;->mViewportRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startNewTransition()V
    .locals 3

    invoke-direct {p0}, Lcom/nthoell/cover/KenBurnsView;->hasBounds()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nthoell/cover/KenBurnsView;->mTransGen:Lcom/nthoell/cover/TransitionGenerator;

    iget-object v1, p0, Lcom/nthoell/cover/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/nthoell/cover/KenBurnsView;->mViewportRect:Landroid/graphics/RectF;

    invoke-interface {v0, v1, v2}, Lcom/nthoell/cover/TransitionGenerator;->generateNextTransition(Landroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/nthoell/cover/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/nthoell/cover/KenBurnsView;->mCurrentTrans:Lcom/nthoell/cover/Transition;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nthoell/cover/KenBurnsView;->mElapsedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nthoell/cover/KenBurnsView;->mLastFrameTime:J

    iget-object v0, p0, Lcom/nthoell/cover/KenBurnsView;->mCurrentTrans:Lcom/nthoell/cover/Transition;

    invoke-direct {p0, v0}, Lcom/nthoell/cover/KenBurnsView;->fireTransitionStart(Lcom/nthoell/cover/Transition;)V

    goto :goto_0
.end method

.method private updateDrawableBounds()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/nthoell/cover/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/nthoell/cover/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    :cond_0
    invoke-virtual {p0}, Lcom/nthoell/cover/KenBurnsView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/nthoell/cover/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_1
    return-void
.end method

.method private updateViewport(FF)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nthoell/cover/KenBurnsView;->mViewportRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method


# virtual methods
.method public getID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Lcom/nthoell/cover/KenBurnsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nthoell/cover/KenBurnsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/nthoell/cover/KenBurnsView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/nthoell/cover/KenBurnsView;->mPaused:Z

    if-nez v11, :cond_1

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nthoell/cover/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/nthoell/cover/KenBurnsView;->updateDrawableBounds()V

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/nthoell/cover/KenBurnsView;->mLastFrameTime:J

    const-wide/16 v12, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/nthoell/cover/KenBurnsView;->postInvalidateDelayed(J)V

    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/nthoell/cover/KenBurnsView;->hasBounds()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nthoell/cover/KenBurnsView;->mCurrentTrans:Lcom/nthoell/cover/Transition;

    if-nez v11, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/nthoell/cover/KenBurnsView;->startNewTransition()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nthoell/cover/KenBurnsView;->mCurrentTrans:Lcom/nthoell/cover/Transition;

    invoke-virtual {v11}, Lcom/nthoell/cover/Transition;->getDestinyRect()Landroid/graphics/RectF;

    move-result-object v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nthoell/cover/KenBurnsView;->mElapsedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nthoell/cover/KenBurnsView;->mLastFrameTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/nthoell/cover/KenBurnsView;->mElapsedTime:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nthoell/cover/KenBurnsView;->mCurrentTrans:Lcom/nthoell/cover/Transition;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nthoell/cover/KenBurnsView;->mElapsedTime:J

    invoke-virtual {v11, v12, v13}, Lcom/nthoell/cover/Transition;->getInterpolatedRect(J)Landroid/graphics/RectF;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nthoell/cover/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v12

    div-float v10, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nthoell/cover/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v12

    div-float v6, v11, v12

    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nthoell/cover/KenBurnsView;->mViewportRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v12

    div-float v3, v11, v12

    mul-float v7, v2, v3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nthoell/cover/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    iget v12, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v11, v12

    mul-float v8, v7, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nthoell/cover/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    iget v12, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v11, v12

    mul-float v9, v7, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nthoell/cover/KenBurnsView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nthoell/cover/KenBurnsView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nthoell/cover/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    neg-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nthoell/cover/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    neg-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nthoell/cover/KenBurnsView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nthoell/cover/KenBurnsView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nthoell/cover/KenBurnsView;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/nthoell/cover/KenBurnsView;->setImageMatrix(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nthoell/cover/KenBurnsView;->mElapsedTime:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nthoell/cover/KenBurnsView;->mCurrentTrans:Lcom/nthoell/cover/Transition;

    invoke-virtual {v11}, Lcom/nthoell/cover/Transition;->getDuration()J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-ltz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nthoell/cover/KenBurnsView;->mCurrentTrans:Lcom/nthoell/cover/Transition;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/nthoell/cover/KenBurnsView;->fireTransitionEnd(Lcom/nthoell/cover/Transition;)V

    invoke-direct/range {p0 .. p0}, Lcom/nthoell/cover/KenBurnsView;->startNewTransition()V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nthoell/cover/KenBurnsView;->mCurrentTrans:Lcom/nthoell/cover/Transition;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/nthoell/cover/KenBurnsView;->fireTransitionEnd(Lcom/nthoell/cover/Transition;)V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/nthoell/cover/KenBurnsView;->restart()V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nthoell/cover/KenBurnsView;->mPaused:Z

    return-void
.end method

.method public restart()V
    .locals 4

    invoke-virtual {p0}, Lcom/nthoell/cover/KenBurnsView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nthoell/cover/KenBurnsView;->getHeight()I

    move-result v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    int-to-float v2, v1

    int-to-float v3, v0

    invoke-direct {p0, v2, v3}, Lcom/nthoell/cover/KenBurnsView;->updateViewport(FF)V

    invoke-direct {p0}, Lcom/nthoell/cover/KenBurnsView;->updateDrawableBounds()V

    invoke-direct {p0}, Lcom/nthoell/cover/KenBurnsView;->startNewTransition()V

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nthoell/cover/KenBurnsView;->mPaused:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nthoell/cover/KenBurnsView;->mLastFrameTime:J

    invoke-virtual {p0}, Lcom/nthoell/cover/KenBurnsView;->invalidate()V

    return-void
.end method

.method public setCoverImage(Landroid/content/Context;)V
    .locals 5

    const-string v2, "ra_cover"

    const-string v3, "id"

    invoke-virtual {p0, v2, v3}, Lcom/nthoell/cover/KenBurnsView;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/nthoell/cover/KenBurnsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/nthoell/cover/KenBurnsView;->coverImage:Landroid/widget/ImageView;

    const-string v2, "Cover"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "coverImage"

    const-string v4, "null"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nthoell/cover/KenBurnsView;->coverUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/nthoell/cover/KenBurnsView;->coverUri:Ljava/lang/String;

    const-string v3, "null"

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/nthoell/cover/KenBurnsView;->coverImage:Landroid/widget/ImageView;

    const-string v3, "ra_cover"

    const-string v4, "drawable"

    invoke-virtual {p0, v3, v4}, Lcom/nthoell/cover/KenBurnsView;->getID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    new-instance v1, Lcom/nthoell/cover/KenBurnsView$1;

    invoke-direct {v1, p0, p1}, Lcom/nthoell/cover/KenBurnsView$1;-><init>(Lcom/nthoell/cover/KenBurnsView;Landroid/content/Context;)V

    new-instance v2, Lcom/nthoell/cover/KenBurnsView$2;

    invoke-direct {v2, p0, p1}, Lcom/nthoell/cover/KenBurnsView$2;-><init>(Lcom/nthoell/cover/KenBurnsView;Landroid/content/Context;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "COVER_IMAGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_0
    iget-object v2, p0, Lcom/nthoell/cover/KenBurnsView;->coverImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/nthoell/cover/KenBurnsView;->coverUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/nthoell/cover/KenBurnsView;->handleImageChange()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/nthoell/cover/KenBurnsView;->handleImageChange()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/nthoell/cover/KenBurnsView;->handleImageChange()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-direct {p0}, Lcom/nthoell/cover/KenBurnsView;->handleImageChange()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    return-void
.end method

.method public setTransitionGenerator(Lcom/nthoell/cover/TransitionGenerator;)V
    .locals 0

    iput-object p1, p0, Lcom/nthoell/cover/KenBurnsView;->mTransGen:Lcom/nthoell/cover/TransitionGenerator;

    invoke-direct {p0}, Lcom/nthoell/cover/KenBurnsView;->startNewTransition()V

    return-void
.end method

.method public setTransitionListener(Lcom/nthoell/cover/KenBurnsView$TransitionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nthoell/cover/KenBurnsView;->mTransitionListener:Lcom/nthoell/cover/KenBurnsView$TransitionListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/nthoell/cover/KenBurnsView;->pause()V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/nthoell/cover/KenBurnsView;->resume()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
