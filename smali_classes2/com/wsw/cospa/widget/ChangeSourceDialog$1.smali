.class Lcom/wsw/cospa/widget/ChangeSourceDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/widget/ChangeSourceDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/widget/ChangeSourceDialog;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/ChangeSourceDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$1;->this$0:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$1;->this$0:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    iget-object p1, p1, Lcom/wsw/cospa/widget/ChangeSourceDialog;->ivRefresh:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$1;->this$0:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    iget-object p1, p1, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$1;->this$0:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    invoke-static {p1}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->access$000(Lcom/wsw/cospa/widget/ChangeSourceDialog;)Lcom/wsw/cospa/model/SearchComicModel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/model/SearchComicModel;->interface(I)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$1;->this$0:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    invoke-static {p1}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->access$000(Lcom/wsw/cospa/widget/ChangeSourceDialog;)Lcom/wsw/cospa/model/SearchComicModel;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$1;->this$0:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    invoke-static {v0}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->access$100(Lcom/wsw/cospa/widget/ChangeSourceDialog;)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog$1;->this$0:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    invoke-static {v1}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->access$200(Lcom/wsw/cospa/widget/ChangeSourceDialog;)J

    move-result-wide v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/wsw/cospa/model/SearchComicModel;->continue(Ljava/lang/String;JLjava/lang/Boolean;)V

    return-void
.end method
