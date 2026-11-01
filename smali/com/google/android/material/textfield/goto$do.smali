.class Lcom/google/android/material/textfield/goto$do;
.super Landroid/support/v4/j62;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/android/material/textfield/goto;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/goto;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/goto$do;->do:Lcom/google/android/material/textfield/goto;

    invoke-direct {p0}, Landroid/support/v4/j62;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/material/textfield/goto$do;->do:Lcom/google/android/material/textfield/goto;

    iget-object p2, p1, Lcom/google/android/material/textfield/try;->for:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p1}, Lcom/google/android/material/textfield/goto;->try(Lcom/google/android/material/textfield/goto;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    return-void
.end method
