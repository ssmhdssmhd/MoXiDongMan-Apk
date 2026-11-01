.class Lcom/wsw/cospa/activity/SearchComicActivity$this;
.super Lcom/wsw/cospa/widget/view/FlowAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/activity/SearchComicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "this"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wsw/cospa/widget/view/FlowAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/SearchComicActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/SearchComicActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$this;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    .line 2
    invoke-direct {p0, p2}, Lcom/wsw/cospa/widget/view/FlowAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/activity/SearchComicActivity$this;Landroid/widget/TextView;ILandroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/activity/SearchComicActivity$this;->if(Landroid/widget/TextView;ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private synthetic if(Landroid/widget/TextView;ILandroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/wsw/cospa/activity/SearchComicActivity$this;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {p3}, Lcom/wsw/cospa/activity/SearchComicActivity;->transient(Lcom/wsw/cospa/activity/SearchComicActivity;)Lcom/wsw/cospa/widget/explosionfield/ExplosionField;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/wsw/cospa/widget/explosionfield/ExplosionField;->explode(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$this;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->interface(Lcom/wsw/cospa/activity/SearchComicActivity;)Lcom/wsw/cospa/activity/SearchComicActivity$this;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/widget/view/FlowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    iget-object p2, p0, Lcom/wsw/cospa/activity/SearchComicActivity$this;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/SearchComicActivity;->continue(Lcom/wsw/cospa/activity/SearchComicActivity;)Landroid/support/v4/o42;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v4/o42;->for(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$this;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->continue(Lcom/wsw/cospa/activity/SearchComicActivity;)Landroid/support/v4/o42;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/o42;->try()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p2, p0, Lcom/wsw/cospa/activity/SearchComicActivity$this;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->volatile(Lcom/wsw/cospa/activity/SearchComicActivity;Ljava/util/List;)Ljava/util/List;

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$this;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->interface(Lcom/wsw/cospa/activity/SearchComicActivity;)Lcom/wsw/cospa/activity/SearchComicActivity$this;

    move-result-object p1

    iget-object p2, p0, Lcom/wsw/cospa/activity/SearchComicActivity$this;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {p2}, Lcom/wsw/cospa/activity/SearchComicActivity;->strictfp(Lcom/wsw/cospa/activity/SearchComicActivity;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/widget/view/FlowAdapter;->refresh(Ljava/util/List;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getView(ILcom/wsw/cospa/widget/view/FlowLayout;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/view/FlowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v0, Lcom/wsw/cospa/activity/SearchComicActivity$this$do;

    invoke-direct {v0, p0, p1}, Lcom/wsw/cospa/activity/SearchComicActivity$this$do;-><init>(Lcom/wsw/cospa/activity/SearchComicActivity$this;I)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    new-instance v0, Lcom/wsw/cospa/activity/strictfp;

    invoke-direct {v0, p0, p2, p1}, Lcom/wsw/cospa/activity/strictfp;-><init>(Lcom/wsw/cospa/activity/SearchComicActivity$this;Landroid/widget/TextView;I)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p2
.end method
