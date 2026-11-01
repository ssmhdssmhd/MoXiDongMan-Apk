.class public final synthetic Landroid/support/v4/s82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/core/state/Interpolator;


# static fields
.field public static final synthetic do:Landroid/support/v4/s82;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/s82;

    invoke-direct {v0}, Landroid/support/v4/s82;-><init>()V

    sput-object v0, Landroid/support/v4/s82;->do:Landroid/support/v4/s82;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 0

    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->else(F)F

    move-result p1

    return p1
.end method
