.class public final synthetic LX/0k6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic A00:Lcom/whatsapp/SettingsHelp;


# direct methods
.method public synthetic constructor <init>(Lcom/whatsapp/SettingsHelp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/0k6;->A00:Lcom/whatsapp/SettingsHelp;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, LX/0k6;->A00:Lcom/whatsapp/SettingsHelp;

    const/16 v0, 0x66

    invoke-static {v1, v0}, LX/01Y;->A17(Landroid/app/Activity;I)V

    return-void
.end method
