.class public final synthetic LX/2gV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic A00:LX/2M7;

.field private final synthetic A01:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(LX/2M7;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/2gV;->A00:LX/2M7;

    iput-object p2, p0, LX/2gV;->A01:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v2, p0, LX/2gV;->A00:LX/2M7;

    iget-object v1, p0, LX/2gV;->A01:Ljava/lang/Runnable;

    const/16 v0, 0x7c

    invoke-static {v2, v0}, LX/01Y;->A17(Landroid/app/Activity;I)V

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
