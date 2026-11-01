.class Lcom/google/android/material/textfield/new$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/new$do;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/widget/AutoCompleteTextView;

.field public final synthetic if:Lcom/google/android/material/textfield/new$do;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/new$do;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/new$do$do;->if:Lcom/google/android/material/textfield/new$do;

    iput-object p2, p0, Lcom/google/android/material/textfield/new$do$do;->do:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/new$do$do;->do:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/textfield/new$do$do;->if:Lcom/google/android/material/textfield/new$do;

    iget-object v1, v1, Lcom/google/android/material/textfield/new$do;->do:Lcom/google/android/material/textfield/new;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/new;->super(Lcom/google/android/material/textfield/new;Z)V

    .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/new$do$do;->if:Lcom/google/android/material/textfield/new$do;

    iget-object v1, v1, Lcom/google/android/material/textfield/new$do;->do:Lcom/google/android/material/textfield/new;

    invoke-static {v1, v0}, Lcom/google/android/material/textfield/new;->throw(Lcom/google/android/material/textfield/new;Z)Z

    return-void
.end method
