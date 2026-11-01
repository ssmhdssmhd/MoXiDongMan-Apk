.class public final synthetic Landroid/support/v4/cb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Function;


# static fields
.field public static final synthetic do:Landroid/support/v4/cb0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/cb0;

    invoke-direct {v0}, Landroid/support/v4/cb0;-><init>()V

    sput-object v0, Landroid/support/v4/cb0;->do:Landroid/support/v4/cb0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/chromium/base/catch;->do(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
