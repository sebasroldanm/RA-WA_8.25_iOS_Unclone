.class public LX/3Gl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/13z;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AK4(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    const v0, 0x7f0800a2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public AKB(Landroid/widget/ImageView;)V
    .locals 1

    const v0, 0x7f0800a2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
