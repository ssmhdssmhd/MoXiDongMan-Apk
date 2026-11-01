.class Lcom/wsw/cospa/activity/SearchComicActivity$this$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/SearchComicActivity$this;->getView(ILcom/wsw/cospa/widget/view/FlowLayout;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic if:Lcom/wsw/cospa/activity/SearchComicActivity$this;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/SearchComicActivity$this;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$this$do;->if:Lcom/wsw/cospa/activity/SearchComicActivity$this;

    iput p2, p0, Lcom/wsw/cospa/activity/SearchComicActivity$this$do;->do:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$this$do;->if:Lcom/wsw/cospa/activity/SearchComicActivity$this;

    iget-object p1, p1, Lcom/wsw/cospa/activity/SearchComicActivity$this;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->interface(Lcom/wsw/cospa/activity/SearchComicActivity;)Lcom/wsw/cospa/activity/SearchComicActivity$this;

    move-result-object p1

    iget v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity$this$do;->do:I

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/view/FlowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity$this$do;->if:Lcom/wsw/cospa/activity/SearchComicActivity$this;

    iget-object v0, v0, Lcom/wsw/cospa/activity/SearchComicActivity$this;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/SearchComicActivity;->et_search_comic:Lcom/wsw/cospa/widget/view/SearchEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity$this$do;->if:Lcom/wsw/cospa/activity/SearchComicActivity$this;

    iget-object v0, v0, Lcom/wsw/cospa/activity/SearchComicActivity$this;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->finally(Lcom/wsw/cospa/activity/SearchComicActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$this$do;->if:Lcom/wsw/cospa/activity/SearchComicActivity$this;

    iget-object p1, p1, Lcom/wsw/cospa/activity/SearchComicActivity$this;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->h()V

    return-void
.end method
