.class public Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/widget/KeyboardToolPop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyBoardAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$TextViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$TextViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/widget/KeyboardToolPop;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/KeyboardToolPop;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;->this$0:Lcom/wsw/cospa/widget/KeyboardToolPop;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;->this$0:Lcom/wsw/cospa/widget/KeyboardToolPop;

    invoke-static {v0}, Lcom/wsw/cospa/widget/KeyboardToolPop;->access$000(Lcom/wsw/cospa/widget/KeyboardToolPop;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$TextViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;->onBindViewHolder(Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$TextViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$TextViewHolder;I)V
    .locals 2
    .param p1    # Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$TextViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p1, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$TextViewHolder;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;->this$0:Lcom/wsw/cospa/widget/KeyboardToolPop;

    invoke-static {v1}, Lcom/wsw/cospa/widget/KeyboardToolPop;->access$000(Lcom/wsw/cospa/widget/KeyboardToolPop;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p2, p1, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$TextViewHolder;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;->this$0:Lcom/wsw/cospa/widget/KeyboardToolPop;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wsw/cospa/widget/KeyboardToolPop;->access$100(Lcom/wsw/cospa/widget/KeyboardToolPop;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p2, p1, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$TextViewHolder;->textView:Landroid/widget/TextView;

    new-instance v0, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$1;-><init>(Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$TextViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$TextViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$TextViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;->this$0:Lcom/wsw/cospa/widget/KeyboardToolPop;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c009f

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$TextViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$TextViewHolder;-><init>(Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;Landroid/view/View;)V

    return-object p2
.end method
