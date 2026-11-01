.class public final synthetic Landroid/support/v4/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/SingleTransformer;


# static fields
.field public static final synthetic do:Landroid/support/v4/k0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/k0;

    invoke-direct {v0}, Landroid/support/v4/k0;-><init>()V

    sput-object v0, Landroid/support/v4/k0;->do:Landroid/support/v4/k0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Landroid/support/v4/jz1;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p1}, Landroid/support/v4/rp1;->new(Landroid/support/v4/jz1;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
