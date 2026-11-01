.class Lcom/google/android/material/textfield/new$this;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/new;->volatile(Landroid/widget/AutoCompleteTextView;)V
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
    iput-object p1, p0, Lcom/google/android/material/textfield/new$this;->do:Lcom/google/android/material/textfield/new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/new$this;->do:Lcom/google/android/material/textfield/new;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/material/textfield/new;->throw(Lcom/google/android/material/textfield/new;Z)Z

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/new$this;->do:Lcom/google/android/material/textfield/new;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/textfield/new;->catch(Lcom/google/android/material/textfield/new;J)J

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/new$this;->do:Lcom/google/android/material/textfield/new;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/textfield/new;->super(Lcom/google/android/material/textfield/new;Z)V

    return-void
.end method
