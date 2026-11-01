.class final Lorg/mozilla/classfile/case;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public do:I

.field public for:I

.field public if:I

.field public new:S


# direct methods
.method public constructor <init>(IIIS)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/mozilla/classfile/case;->do:I

    .line 3
    iput p2, p0, Lorg/mozilla/classfile/case;->if:I

    .line 4
    iput p3, p0, Lorg/mozilla/classfile/case;->for:I

    .line 5
    iput-short p4, p0, Lorg/mozilla/classfile/case;->new:S

    return-void
.end method
