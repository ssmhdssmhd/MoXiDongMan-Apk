.class public final Landroid/support/v4/kl2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/core/_Java6;


# static fields
.field public static final do:Lfreemarker/core/_Java6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/kl2;

    invoke-direct {v0}, Landroid/support/v4/kl2;-><init>()V

    sput-object v0, Landroid/support/v4/kl2;->do:Lfreemarker/core/_Java6;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setExponentSeparator(Ljava/text/DecimalFormatSymbols;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    return-void
.end method

.method public setRoundingMode(Ljava/text/DecimalFormat;Ljava/math/RoundingMode;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    return-void
.end method
