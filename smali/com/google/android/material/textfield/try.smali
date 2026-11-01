.class abstract Lcom/google/android/material/textfield/try;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public do:Lcom/google/android/material/textfield/TextInputLayout;

.field public for:Lcom/google/android/material/internal/CheckableImageButton;

.field public if:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1
    .param p1    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/try;->do:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/try;->if:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/textfield/try;->for:Lcom/google/android/material/internal/CheckableImageButton;

    return-void
.end method


# virtual methods
.method public abstract do()V
.end method

.method public for(Z)V
    .locals 0

    return-void
.end method

.method public if(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public new()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
