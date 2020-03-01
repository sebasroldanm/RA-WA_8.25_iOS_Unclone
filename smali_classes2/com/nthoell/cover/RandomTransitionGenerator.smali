.class public Lcom/nthoell/cover/RandomTransitionGenerator;
.super Ljava/lang/Object;
.source "RandomTransitionGenerator.java"

# interfaces
.implements Lcom/nthoell/cover/TransitionGenerator;


# static fields
.field public static final DEFAULT_TRANSITION_DURATION:I = 0x2710

.field private static final MIN_RECT_FACTOR:F = 0.75f


# instance fields
.field private mLastDrawableBounds:Landroid/graphics/RectF;

.field private mLastGenTrans:Lcom/nthoell/cover/Transition;

.field private final mRandom:Ljava/util/Random;

.field private mTransitionDuration:J

.field private mTransitionInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x2710

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/nthoell/cover/RandomTransitionGenerator;-><init>(JLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(JLandroid/view/animation/Interpolator;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/nthoell/cover/RandomTransitionGenerator;->mRandom:Ljava/util/Random;

    invoke-virtual {p0, p1, p2}, Lcom/nthoell/cover/RandomTransitionGenerator;->setTransitionDuration(J)V

    invoke-virtual {p0, p3}, Lcom/nthoell/cover/RandomTransitionGenerator;->setTransitionInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private generateRandomRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 19

    invoke-static/range {p1 .. p1}, Lcom/nthoell/cover/MathUtils;->getRectRatio(Landroid/graphics/RectF;)F

    move-result v2

    invoke-static/range {p2 .. p2}, Lcom/nthoell/cover/MathUtils;->getRectRatio(Landroid/graphics/RectF;)F

    move-result v11

    cmpl-float v14, v2, v11

    if-lez v14, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v15

    div-float/2addr v14, v15

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v15

    mul-float v8, v14, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    new-instance v7, Landroid/graphics/RectF;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v7, v14, v15, v8, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nthoell/cover/RandomTransitionGenerator;->mRandom:Ljava/util/Random;

    invoke-virtual {v14}, Ljava/util/Random;->nextFloat()F

    move-result v14

    const/4 v15, 0x2

    invoke-static {v14, v15}, Lcom/nthoell/cover/MathUtils;->truncate(FI)F

    move-result v9

    const/high16 v14, 0x3f400000    # 0.75f

    const/high16 v15, 0x3e800000    # 0.25f

    mul-float/2addr v15, v9

    add-float v3, v14, v15

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v14

    mul-float v12, v3, v14

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v14

    mul-float v4, v3, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v14

    sub-float/2addr v14, v12

    float-to-int v13, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v14

    sub-float/2addr v14, v4

    float-to-int v5, v14

    if-lez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nthoell/cover/RandomTransitionGenerator;->mRandom:Ljava/util/Random;

    invoke-virtual {v14, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    :goto_1
    if-lez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nthoell/cover/RandomTransitionGenerator;->mRandom:Ljava/util/Random;

    invoke-virtual {v14, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    :goto_2
    new-instance v14, Landroid/graphics/RectF;

    int-to-float v15, v6

    int-to-float v0, v10

    move/from16 v16, v0

    int-to-float v0, v6

    move/from16 v17, v0

    add-float v17, v17, v12

    int-to-float v0, v10

    move/from16 v18, v0

    add-float v18, v18, v4

    invoke-direct/range {v14 .. v18}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v14

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v15

    div-float/2addr v14, v15

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v15

    mul-float v1, v14, v15

    new-instance v7, Landroid/graphics/RectF;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v7, v14, v15, v8, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    goto :goto_2
.end method


# virtual methods
.method public generateNextTransition(Landroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/nthoell/cover/Transition;
    .locals 9

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nthoell/cover/RandomTransitionGenerator;->mLastGenTrans:Lcom/nthoell/cover/Transition;

    if-nez v5, :cond_2

    move v7, v1

    :goto_0
    const/4 v0, 0x1

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v7, :cond_0

    iget-object v5, p0, Lcom/nthoell/cover/RandomTransitionGenerator;->mLastGenTrans:Lcom/nthoell/cover/Transition;

    invoke-virtual {v5}, Lcom/nthoell/cover/Transition;->getDestinyRect()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v5, p0, Lcom/nthoell/cover/RandomTransitionGenerator;->mLastDrawableBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v5}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v3, p2}, Lcom/nthoell/cover/MathUtils;->haveSameAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v5

    if-nez v5, :cond_4

    move v8, v1

    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    if-eqz v8, :cond_5

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/nthoell/cover/RandomTransitionGenerator;->generateRandomRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    :goto_3
    invoke-direct {p0, p1, p2}, Lcom/nthoell/cover/RandomTransitionGenerator;->generateRandomRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    new-instance v1, Lcom/nthoell/cover/Transition;

    iget-wide v4, p0, Lcom/nthoell/cover/RandomTransitionGenerator;->mTransitionDuration:J

    iget-object v6, p0, Lcom/nthoell/cover/RandomTransitionGenerator;->mTransitionInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct/range {v1 .. v6}, Lcom/nthoell/cover/Transition;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;JLandroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/nthoell/cover/RandomTransitionGenerator;->mLastGenTrans:Lcom/nthoell/cover/Transition;

    iput-object p1, p0, Lcom/nthoell/cover/RandomTransitionGenerator;->mLastDrawableBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/nthoell/cover/RandomTransitionGenerator;->mLastGenTrans:Lcom/nthoell/cover/Transition;

    return-object v1

    :cond_2
    move v7, v4

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_1

    :cond_4
    move v8, v4

    goto :goto_2

    :cond_5
    move-object v2, v3

    goto :goto_3
.end method

.method public setTransitionDuration(J)V
    .locals 1

    iput-wide p1, p0, Lcom/nthoell/cover/RandomTransitionGenerator;->mTransitionDuration:J

    return-void
.end method

.method public setTransitionInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/nthoell/cover/RandomTransitionGenerator;->mTransitionInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method
