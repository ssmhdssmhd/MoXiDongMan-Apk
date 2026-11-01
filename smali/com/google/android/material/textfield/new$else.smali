.class Lcom/google/android/material/textfield/new$else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/new;->do()V
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
    iput-object p1, p0, Lcom/google/android/material/textfield/new$else;->do:Lcom/google/android/material/textfield/new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/textfield/new$else;->do:Lcom/google/android/material/textfield/new;

    iget-object p1, p1, Lcom/google/android/material/textfield/try;->do:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/new$else;->do:Lcom/google/android/material/textfield/new;

    invoke-static {v0, p1}, Lcom/google/android/material/textfield/new;->while(Lcom/google/android/material/textfield/new;Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method
