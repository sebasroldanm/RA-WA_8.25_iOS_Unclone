.class public final synthetic LX/1MD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic A00:LX/243;


# direct methods
.method public synthetic constructor <init>(LX/243;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/1MD;->A00:LX/243;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v3, p0, LX/1MD;->A00:LX/243;

    iget-object v0, v3, LX/243;->A00:LX/2Gc;

    iget-object v0, v0, LX/0sm;->A05:LX/17b;

    iget-object v0, v0, LX/17b;->A00:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v1, 0x1

    const-string v0, "sticker_picker_initial_download"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, v3, LX/243;->A00:LX/2Gc;

    invoke-virtual {v0}, LX/2Gc;->A0D()V

    return-void
.end method
