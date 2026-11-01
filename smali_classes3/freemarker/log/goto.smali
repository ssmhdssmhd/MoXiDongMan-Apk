.class public Lfreemarker/log/goto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/log/LoggerFactory;


# static fields
.field private static final do:Lfreemarker/log/if;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/log/goto$do;

    invoke-direct {v0}, Lfreemarker/log/goto$do;-><init>()V

    sput-object v0, Lfreemarker/log/goto;->do:Lfreemarker/log/if;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/String;)Lfreemarker/log/if;
    .locals 0

    .line 1
    sget-object p1, Lfreemarker/log/goto;->do:Lfreemarker/log/if;

    return-object p1
.end method
