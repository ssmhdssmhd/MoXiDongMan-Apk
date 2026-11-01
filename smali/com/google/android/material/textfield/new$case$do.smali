.class Lcom/google/android/material/textfield/new$case$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/new$case;->onEndIconChanged(Lcom/google/android/material/textfield/TextInputLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/widget/AutoCompleteTextView;

.field public final synthetic if:Lcom/google/android/material/textfield/new$case;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/new$case;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/new$case$do;->if:Lcom/google/android/material/textfield/new$case;

    iput-object p2, p0, Lcom/google/android/material/textfield/new$case$do;->do:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/new$case$do;->do:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/google/android/material/textfield/new$case$do;->if:Lcom/google/android/material/textfield/new$case;

    iget-object v1, v1, Lcom/google/android/material/textfield/new$case;->do:Lcom/google/android/material/textfield/new;

    invoke-static {v1}, Lcom/google/android/material/textfield/new;->return(Lcom/google/android/material/textfield/new;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
