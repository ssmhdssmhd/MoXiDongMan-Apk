.class public final synthetic Landroid/support/v4/cj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic do:Landroid/support/v4/cj0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/cj0;

    invoke-direct {v0}, Landroid/support/v4/cj0;-><init>()V

    sput-object v0, Landroid/support/v4/cj0;->do:Landroid/support/v4/cj0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/mozilla/javascript/Hashtable$Entry;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Hashtable$Entry;->clear()Ljava/lang/Object;

    return-void
.end method
