.class public LX/3H8;
.super LX/0oY;
.source ""


# instance fields
.field public final synthetic A00:Lcom/whatsapp/voipcalling/VoipNotAllowedActivity;


# direct methods
.method public constructor <init>(Lcom/whatsapp/voipcalling/VoipNotAllowedActivity;)V
    .locals 0

    iput-object p1, p0, LX/3H8;->A00:Lcom/whatsapp/voipcalling/VoipNotAllowedActivity;

    invoke-direct {p0}, LX/0oY;-><init>()V

    return-void
.end method


# virtual methods
.method public A04(LX/1SW;)V
    .locals 1

    const-string v0, "voipnotallowedactivity/onCallStarted finish this activity"

    invoke-static {v0}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    invoke-super {p0, p1}, LX/0oY;->A04(LX/1SW;)V

    iget-object v0, p0, LX/3H8;->A00:Lcom/whatsapp/voipcalling/VoipNotAllowedActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
