.class Lcom/wsw/cospa/activity/HomeActivity$case;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/HomeActivity;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/HomeActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/HomeActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity$case;->do:Lcom/wsw/cospa/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/g31;->for(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity$case;->do:Lcom/wsw/cospa/activity/HomeActivity;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "home_header_url_key"

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/v02;->this(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity$case;->do:Lcom/wsw/cospa/activity/HomeActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/HomeActivity;->x()V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity$case;->do:Lcom/wsw/cospa/activity/HomeActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/HomeActivity;->dlLeftMain:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-static {p1}, Landroid/support/v4/j10;->do(Landroid/view/View;)V

    :cond_0
    return-void
.end method
