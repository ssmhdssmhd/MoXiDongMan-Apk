.class public Lfreemarker/core/p3$do;
.super Lfreemarker/core/m0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/p3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# static fields
.field public static final INSTANCE:Lfreemarker/core/p3$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/core/p3$do;

    invoke-direct {v0}, Lfreemarker/core/p3$do;-><init>()V

    sput-object v0, Lfreemarker/core/p3$do;->INSTANCE:Lfreemarker/core/p3$do;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/m0;-><init>()V

    return-void
.end method
