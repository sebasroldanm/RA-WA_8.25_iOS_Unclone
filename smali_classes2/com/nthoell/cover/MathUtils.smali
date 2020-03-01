.class public final Lcom/nthoell/cover/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getRectRatio(Landroid/graphics/RectF;)F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected static haveSameAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 4

    const/4 v3, 0x2

    invoke-static {p0}, Lcom/nthoell/cover/MathUtils;->getRectRatio(Landroid/graphics/RectF;)F

    move-result v2

    invoke-static {v2, v3}, Lcom/nthoell/cover/MathUtils;->truncate(FI)F

    move-result v1

    invoke-static {p1}, Lcom/nthoell/cover/MathUtils;->getRectRatio(Landroid/graphics/RectF;)F

    move-result v2

    invoke-static {v2, v3}, Lcom/nthoell/cover/MathUtils;->truncate(FI)F

    move-result v0

    sub-float v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static truncate(FI)F
    .locals 6

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float v1, p0, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1
.end method
