.class Lcom/google/android/material/textfield/new$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/android/material/textfield/new;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/new$for;->do:Lcom/google/android/material/textfield/new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/material/textfield/new$for;->do:Lcom/google/android/material/textfield/new;

    iget-object p1, p1, Lcom/google/android/material/textfield/try;->do:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconActivated(Z)V

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/new$for;->do:Lcom/google/android/material/textfield/new;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/material/textfield/new;->super(Lcom/google/android/material/textfield/new;Z)V

    .line 3
    iget-object p1, p0, Lcom/google/android/material/textfield/new$for;->do:Lcom/google/android/material/textfield/new;

    invoke-static {p1, p2}, Lcom/google/android/material/textfield/new;->throw(Lcom/google/android/material/textfield/new;Z)Z

    :cond_0
    return-void
.end method
