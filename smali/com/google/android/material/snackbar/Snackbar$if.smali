.class public Lcom/google/android/material/snackbar/Snackbar$if;
.super Lcom/google/android/material/snackbar/BaseTransientBottomBar$public;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar$public<",
        "Lcom/google/android/material/snackbar/Snackbar;",
        ">;"
    }
.end annotation


# static fields
.field public static final break:I = 0x4

.field public static final case:I = 0x0

.field public static final else:I = 0x1

.field public static final goto:I = 0x2

.field public static final this:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$public;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic do(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/snackbar/Snackbar$if;->for(Lcom/google/android/material/snackbar/Snackbar;I)V

    return-void
.end method

.method public for(Lcom/google/android/material/snackbar/Snackbar;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic if(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/Snackbar$if;->new(Lcom/google/android/material/snackbar/Snackbar;)V

    return-void
.end method

.method public new(Lcom/google/android/material/snackbar/Snackbar;)V
    .locals 0

    return-void
.end method
