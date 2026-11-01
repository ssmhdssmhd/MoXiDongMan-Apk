.class public Landroid/support/v4/q80$for;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/q80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation


# instance fields
.field public code:I

.field public message:Ljava/lang/String;

.field public final synthetic this$0:Landroid/support/v4/q80;


# direct methods
.method public constructor <init>(Landroid/support/v4/q80;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/q80$for;->this$0:Landroid/support/v4/q80;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2
    iput p2, p0, Landroid/support/v4/q80$for;->code:I

    .line 3
    iput-object p3, p0, Landroid/support/v4/q80$for;->message:Ljava/lang/String;

    return-void
.end method
