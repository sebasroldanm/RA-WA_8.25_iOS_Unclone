.class public LX/2u7;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source ""


# instance fields
.field public final synthetic A00:LX/3HC;


# direct methods
.method public constructor <init>(LX/3HC;)V
    .locals 0

    iput-object p1, p0, LX/2u7;->A00:LX/3HC;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    iget-object v0, p0, LX/2u7;->A00:LX/3HC;

    iget-object v0, v0, LX/3HC;->A02:Landroid/hardware/camera2/CameraDevice;

    if-ne p1, v0, :cond_0

    const-string v0, "voip/video/VoipCamera/ cameraDevice disconnected"

    invoke-static {v0}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    iget-object v0, p0, LX/2u7;->A00:LX/3HC;

    iget-object v0, v0, Lcom/whatsapp/voipcalling/camera/VoipCamera;->cameraEventsDispatcher:LX/2u1;

    invoke-virtual {v0}, LX/2u1;->A01()V

    :cond_0
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1

    const-string v0, "voip/video/VoipCamera/ cameraDevice error"

    invoke-static {v0}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    iget-object v0, p0, LX/2u7;->A00:LX/3HC;

    iget-object v0, v0, Lcom/whatsapp/voipcalling/camera/VoipCamera;->cameraEventsDispatcher:LX/2u1;

    invoke-virtual {v0}, LX/2u1;->A02()V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    const-string v0, "voip/video/VoipCamera/ camera opened"

    invoke-static {v0}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    iget-object v1, p0, LX/2u7;->A00:LX/3HC;

    iput-object p1, v1, LX/3HC;->A02:Landroid/hardware/camera2/CameraDevice;

    iget-object v0, v1, Lcom/whatsapp/voipcalling/camera/VoipCamera;->videoPort:Lcom/whatsapp/voipcalling/VideoPort;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, LX/3HC;->A00()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LX/2u7;->A00:LX/3HC;

    iget-object v0, v0, Lcom/whatsapp/voipcalling/camera/VoipCamera;->cameraEventsDispatcher:LX/2u1;

    invoke-virtual {v0}, LX/2u1;->A02()V

    :cond_0
    return-void
.end method
