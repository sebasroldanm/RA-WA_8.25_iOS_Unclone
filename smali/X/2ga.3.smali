.class public final synthetic LX/2ga;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final synthetic A00:LX/2hj;


# direct methods
.method public synthetic constructor <init>(LX/2hj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/2ga;->A00:LX/2hj;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v1, p0, LX/2ga;->A00:LX/2hj;

    const-string v0, "select-phone-number-dialog/phone-number-selected"

    invoke-static {v0}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    iget v0, v1, LX/2hj;->A00:I

    if-eq v0, p3, :cond_0

    iput p3, v1, LX/2hj;->A00:I

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
