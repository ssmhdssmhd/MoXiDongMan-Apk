.class public abstract Lfreemarker/cache/switch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/cache/switch$if;
    }
.end annotation


# static fields
.field public static final do:Lfreemarker/cache/switch;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lfreemarker/cache/switch$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfreemarker/cache/switch$if;-><init>(Lfreemarker/cache/switch$do;)V

    sput-object v0, Lfreemarker/cache/switch;->do:Lfreemarker/cache/switch;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract do(Lfreemarker/cache/return;)Lfreemarker/cache/static;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
