.class Lcom/google/android/material/textfield/goto$for$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/goto$for;->onEndIconChanged(Lcom/google/android/material/textfield/TextInputLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/widget/EditText;

.field public final synthetic if:Lcom/google/android/material/textfield/goto$for;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/goto$for;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/goto$for$do;->if:Lcom/google/android/material/textfield/goto$for;

    iput-object p2, p0, Lcom/google/android/material/textfield/goto$for$do;->do:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/goto$for$do;->do:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/textfield/goto$for$do;->if:Lcom/google/android/material/textfield/goto$for;

    iget-object v1, v1, Lcom/google/android/material/textfield/goto$for;->do:Lcom/google/android/material/textfield/goto;

    invoke-static {v1}, Lcom/google/android/material/textfield/goto;->case(Lcom/google/android/material/textfield/goto;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
