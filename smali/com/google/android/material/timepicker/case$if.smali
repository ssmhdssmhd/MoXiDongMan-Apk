.class Lcom/google/android/material/timepicker/case$if;
.super Landroid/support/v4/j62;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/timepicker/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/android/material/timepicker/case;


# direct methods
.method public constructor <init>(Lcom/google/android/material/timepicker/case;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/timepicker/case$if;->do:Lcom/google/android/material/timepicker/case;

    invoke-direct {p0}, Landroid/support/v4/j62;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/material/timepicker/case$if;->do:Lcom/google/android/material/timepicker/case;

    invoke-static {p1}, Lcom/google/android/material/timepicker/case;->do(Lcom/google/android/material/timepicker/case;)Lcom/google/android/material/timepicker/TimeModel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/timepicker/TimeModel;->else(I)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/timepicker/case$if;->do:Lcom/google/android/material/timepicker/case;

    invoke-static {v0}, Lcom/google/android/material/timepicker/case;->do(Lcom/google/android/material/timepicker/case;)Lcom/google/android/material/timepicker/TimeModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/TimeModel;->else(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
