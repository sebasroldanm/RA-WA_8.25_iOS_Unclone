.class public final synthetic LX/0ms;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final synthetic A00:LX/0y9;


# direct methods
.method public synthetic constructor <init>(LX/0y9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/0ms;->A00:LX/0y9;

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 6

    iget-object v5, p0, LX/0ms;->A00:LX/0y9;

    float-to-double v3, p1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v3, v1

    if-lez v0, :cond_0

    iget v0, v5, LX/0y9;->A00:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
