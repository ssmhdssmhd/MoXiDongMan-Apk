.class Lcom/google/android/material/textfield/new$goto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/new;->volatile(Landroid/widget/AutoCompleteTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/widget/AutoCompleteTextView;

.field public final synthetic if:Lcom/google/android/material/textfield/new;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/new;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/new$goto;->if:Lcom/google/android/material/textfield/new;

    iput-object p2, p0, Lcom/google/android/material/textfield/new$goto;->do:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/new$goto;->if:Lcom/google/android/material/textfield/new;

    invoke-static {p1}, Lcom/google/android/material/textfield/new;->break(Lcom/google/android/material/textfield/new;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/material/textfield/new$goto;->if:Lcom/google/android/material/textfield/new;

    invoke-static {p1, p2}, Lcom/google/android/material/textfield/new;->throw(Lcom/google/android/material/textfield/new;Z)Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/new$goto;->if:Lcom/google/android/material/textfield/new;

    iget-object v0, p0, Lcom/google/android/material/textfield/new$goto;->do:Landroid/widget/AutoCompleteTextView;

    invoke-static {p1, v0}, Lcom/google/android/material/textfield/new;->while(Lcom/google/android/material/textfield/new;Landroid/widget/AutoCompleteTextView;)V

    :cond_1
    return p2
.end method
