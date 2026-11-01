.class public Landroid/support/v4/df1;
.super Landroid/support/v4/hx;
.source "SourceFile"


# instance fields
.field public final else:Lorg/antlr/v4/runtime/atn/break;

.field public final goto:I

.field public final this:Z


# direct methods
.method public constructor <init>(ILorg/antlr/v4/runtime/TokenStream;IILorg/antlr/v4/runtime/atn/break;ZIZ)V
    .locals 7

    .line 1
    new-instance v2, Landroid/support/v4/throws;

    invoke-direct {v2}, Landroid/support/v4/throws;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/hx;-><init>(ILandroid/support/v4/throws;Lorg/antlr/v4/runtime/TokenStream;IIZ)V

    .line 2
    iput-object p5, p0, Landroid/support/v4/df1;->else:Lorg/antlr/v4/runtime/atn/break;

    .line 3
    iput-boolean p6, p0, Landroid/support/v4/df1;->this:Z

    .line 4
    iput p7, p0, Landroid/support/v4/df1;->goto:I

    return-void
.end method
