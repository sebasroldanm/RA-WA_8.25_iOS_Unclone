.class public LX/2fH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field public final synthetic A00:Lcom/whatsapp/qrcode/QrScannerView;


# direct methods
.method public constructor <init>(Lcom/whatsapp/qrcode/QrScannerView;)V
    .locals 0

    iput-object p1, p0, LX/2fH;->A00:Lcom/whatsapp/qrcode/QrScannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 5

    new-instance v4, LX/2f6;

    invoke-direct {v4, p0}, LX/2f6;-><init>(LX/2fH;)V

    iget-object v3, p0, LX/2fH;->A00:Lcom/whatsapp/qrcode/QrScannerView;

    iget-object v2, v3, Lcom/whatsapp/qrcode/QrScannerView;->A04:Landroid/os/Handler;

    const-wide/16 v0, 0x7d0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    invoke-virtual {v3, v4, v0, v1}, Landroid/view/SurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
