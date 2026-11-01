.class Lcom/google/android/material/timepicker/for$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/for;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/android/material/timepicker/for;


# direct methods
.method public constructor <init>(Lcom/google/android/material/timepicker/for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/timepicker/for$do;->do:Lcom/google/android/material/timepicker/for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/for$do;->do:Lcom/google/android/material/timepicker/for;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/for;->try()V

    return-void
.end method
