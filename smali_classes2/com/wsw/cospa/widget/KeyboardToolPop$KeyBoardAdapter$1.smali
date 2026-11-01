.class Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;->onBindViewHolder(Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$TextViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;

.field public final synthetic val$holder:Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$TextViewHolder;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$TextViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$1;->this$1:Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;

    iput-object p2, p0, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$1;->val$holder:Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$TextViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$1;->this$1:Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;

    iget-object p1, p1, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;->this$0:Lcom/wsw/cospa/widget/KeyboardToolPop;

    invoke-static {p1}, Lcom/wsw/cospa/widget/KeyboardToolPop;->access$200(Lcom/wsw/cospa/widget/KeyboardToolPop;)Lcom/wsw/cospa/widget/KeyboardToolPop$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$1;->this$1:Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;

    iget-object p1, p1, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter;->this$0:Lcom/wsw/cospa/widget/KeyboardToolPop;

    invoke-static {p1}, Lcom/wsw/cospa/widget/KeyboardToolPop;->access$200(Lcom/wsw/cospa/widget/KeyboardToolPop;)Lcom/wsw/cospa/widget/KeyboardToolPop$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$1;->val$holder:Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$TextViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/widget/KeyboardToolPop$KeyBoardAdapter$TextViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/wsw/cospa/widget/KeyboardToolPop$OnClickListener;->click(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
